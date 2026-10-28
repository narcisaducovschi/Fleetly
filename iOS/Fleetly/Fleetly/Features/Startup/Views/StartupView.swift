
import SwiftUI

struct StartupView: View {

    // Color principal de la marca Fleetly.
    private let brandBlue = Color(
        red: 0.12,
        green: 0.36,
        blue: 0.85
    )

    var body: some View {
        ZStack {

            // Fondo azul a pantalla completa.
            brandBlue
                .ignoresSafeArea()

            VStack(spacing: 24) {

                Spacer()

                // Logotipo provisional: después podremos
                // sustituirlo por el logo de Fleetly.
                Image(systemName: "truck.box.fill")
                    .font(.system(size: 76))
                    .foregroundStyle(.white)

                // Nombre de la aplicación.
                Text("Fleetly")
                    .font(.system(size: 38, weight: .bold))
                    .foregroundStyle(.white)

                // Mensaje que aparece durante la carga.
                Text("Preparando tu flota...")
                    .font(.system(size: 16))
                    .foregroundStyle(.white.opacity(0.85))

                // Indicador de carga provisional.
                ProgressView()
                    .tint(.white)
                    .scaleEffect(1.2)
                    .padding(.top, 8)

                Spacer()

                // Información al pie de la pantalla.
                Text("GESTIÓN DE FLOTAS")
                    .font(.system(size: 11, weight: .semibold))
                    .tracking(3)
                    .foregroundStyle(.white.opacity(0.7))
                    .padding(.bottom, 24)
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    StartupView()
}
