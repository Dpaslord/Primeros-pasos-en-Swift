//
//  TextFieldsExample.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 15/04/2026.
//

import SwiftUI

struct TextFieldsExample: View {
    @State var resultado: String = ""
    var body: some View {
        TextField("Escribe lo que quieras", text: $resultado)
            .frame(width: 300, height: 40)
            .keyboardType(.numberPad)
            .padding(9)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(10)
    }
}

#Preview {
    TextFieldsExample()
}
