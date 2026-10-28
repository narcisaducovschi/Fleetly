
import SwiftUI
import Combine

enum AppScreen {
    case startup
    case login
    case dashboard
}

// ObservableObject permite que SwiftUI observe los cambios
// de estado y actualice automáticamente la interfaz.
@MainActor
final class AppCoordinator: ObservableObject {

    // @Published avisa a SwiftUI cuando cambia la pantalla.
    @Published var currentScreen: AppScreen = .startup

    func showLogin() {
        currentScreen = .login
    }
    func showDashboard() {
        currentScreen = .dashboard
    }
    
    func showStartup() {
        currentScreen = .startup
    }
}
