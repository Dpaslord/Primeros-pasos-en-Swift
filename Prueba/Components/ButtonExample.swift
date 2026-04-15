//
//  ButtonExample.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 15/04/2026.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Text("Botones")
            .font(Font.largeTitle)
            .bold(true)
        Button(action: {
            print("Hola juanito")
        }, label: {Text("Boton para saludar").padding()})
        .font(.system(size: 20))
        .frame(height: 70)
        .background(Color.blue)
        .foregroundStyle(Color.white)
        .cornerRadius(10)
        .shadow(color: .green, radius: 10)
        .padding()
    }
}

struct Contruct: View {
    @State var subs = 0
    var body: some View {
        
        Button(action: {
            subs += 1
            print("Se ha suscrito una persona")
        }, label: {Text("Suscripciones: \(subs)").padding()})
        .bold()
        .font(.title)
        .frame(height: 70)
        .background(Color.red)
        .foregroundStyle(Color.white)
        .cornerRadius(10)
        .shadow(color: .red, radius: 10)
        .padding()
    
    }
}

#Preview {
    ButtonExample()
}

#Preview {
    Contruct()
}
