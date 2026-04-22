//
//  PruebaREctangulos.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 15/04/2026.
//

import SwiftUI

struct PruebaRectangulos: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 100)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 100)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(height: 100)
            }
            VStack{
                Rectangle()
                    .fill(Color.orange)
                    .frame( height: 150)
                HStack{
                    Circle().fill(Color.green)
                    Rectangle()
                        .frame(width: 100)
                    Circle().fill(Color.indigo)
                }
                Rectangle()
                    .fill(Color.orange)
                    .frame( height: 150)
            }
            HStack{
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 100)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 100)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(height: 100)
            }
        }.background(Color.red).frame( height: 750)
    }
}

#Preview {
    PruebaRectangulos()
}
