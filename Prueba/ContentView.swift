//
//  ContentView.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 14/04/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Aplicacion de Contactos").bold(true).font(Font.system(.title, design: .rounded)).padding(10).fixedSize()
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .padding(10)
            }
            Text("Contactos del telefono").foregroundColor(Color.blue)
            Label("David Pascual Lorenzo", systemImage: "person")
            Button("Hola") {
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
