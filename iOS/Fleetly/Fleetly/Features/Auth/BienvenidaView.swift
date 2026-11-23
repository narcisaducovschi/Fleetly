import SwiftUI

struct BienvenidaView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Image("WelcomeIllustration")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 280)
                    .frame(maxWidth: .infinity)
                    .accessibilityHidden(true)

                Text("Tu flota, siempre en \(Text("movimiento").foregroundStyle(Color("BrandPrimary")))")
                    .font(.custom("PlusJakartaSans-Bold", size: 32, relativeTo: .largeTitle))
                    .foregroundStyle(Color("BrandNeutral"))
                
                Text("Gestiona tus rutas, entregas y actividad diaria desde un solo lugar.")
                    .font(.custom("PlusJakartaSans-Regular", size: 16, relativeTo: .body))
                    .foregroundStyle(Color("TextSecondary"))

                NavigationLink {
                    LoginView()
                } label: {
                    Text("Iniciar sesión")
                        .font(.custom("PlusJakartaSans-SemiBold", size: 16, relativeTo: .body))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 6)
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("BrandPrimary"))
                
                Text("Fleetly · Gestión de Flotas")
                    .font(.custom("PlusJakartaSans-Regular", size: 12, relativeTo: .caption))
                    .foregroundStyle(Color("TextSecondary"))
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(24)
        }
        .background {
            Color("AppBackground").ignoresSafeArea()
        }
    }
}
