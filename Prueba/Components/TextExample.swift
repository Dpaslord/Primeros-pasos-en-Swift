//
//  TextExample.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 15/04/2026.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text("Calculadora")
                .font(.system(
                    size: 70,
                    weight: .bold,
                    design: .rounded),
                )
                .background(Color.red)
                .foregroundStyle(Color.white)
                .underline(false)
        }.frame(width: 400,height: 700, alignment: .top)
            .background(Color.blue)
        
    }
}

#Preview {
    TextExample()
}
