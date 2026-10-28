
import Foundation

enum APIError: LocalizedError {
    case invalidResponse        // Respuesta HTTP inválida
    case httpStatus(Int)        // Código de la respusta inválida

    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "La respuesta del servidor no es válida."
        case .httpStatus(let code):
            return "El servidor ha respondido con el código \(code)."
        }
    }
}

struct APIClient {
    private let session: URLSession

    init(session: URLSession = .shared) {
        self.session = session
    }

    // Ejecuta la petición y devuelve el Body
    func request(
        path: String,
        method: String = "GET",
        body: Data? = nil,
        headers: [String: String] = [:]
    ) async throws -> Data {
        let cleanPath = path.trimmingCharacters(
            in: CharacterSet(charactersIn: "/")
        )

        let url = cleanPath.isEmpty
            ? APIConfiguration.baseURL
            : APIConfiguration.baseURL.appending(path: cleanPath)

        var request = URLRequest(url: url)
        request.httpMethod = method
        request.timeoutInterval = 15
        request.setValue(
            "application/json",
            forHTTPHeaderField: "Accept"
        )

        if let body {
            request.httpBody = body
            request.setValue(
                "application/json",
                forHTTPHeaderField: "Content-Type"
            )
        }

        for (key, value) in headers {
            request.setValue(value, forHTTPHeaderField: key)
        }

        let (data, response) = try await session.data(
            for: request
        )

        guard let httpResponse = response as? HTTPURLResponse else {
            throw APIError.invalidResponse
        }

        guard (200..<300).contains(httpResponse.statusCode) else {
            throw APIError.httpStatus(httpResponse.statusCode)
        }

        return data
    }
}
