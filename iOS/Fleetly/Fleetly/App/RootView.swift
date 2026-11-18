//
//  ContentView.swift
//  Fleetly
//
//  Created by Narcis Aducovschi on 18/11/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(alignment: .top, spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Plus Jakarta Sans")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("Bienvenido a Fleetly")
                    .font(.custom("PlusJakartaSans-SemiBold", size: 24, relativeTo: .title2))

                Text("Consulta tu ruta de hoy")
                    .font(.custom("PlusJakartaSans-Regular", size: 16, relativeTo: .body))
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            VStack(alignment: .leading, spacing: 8) {
                Text("SF Pro")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("Bienvenido a Fleetly")
                    .font(.system(size: 24, weight: .semibold))

                Text("Consulta tu ruta de hoy")
                    .font(.system(size: 16, weight: .regular))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
