//
//  IMCResult.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 16/04/2026.
//

import SwiftUI

struct IMCResult: View {
    let altura:Double
    let peso:Double
    
        var body: some View {
        VStack{
            Text("Tu resultado ")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            InformacionView(altura: altura, peso: peso)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

func calcularIMC (_ altura: Double, _ peso: Double ) -> Double {
    let alturaEnMetros = (altura / 100.0)
    let imc = (peso) / (alturaEnMetros * alturaEnMetros)
    return imc
}

struct InformacionView:View {
    let altura:Double
    let peso:Double
    
    var body: some View {
        VStack{
            let resultado = calcularIMC(altura, peso)
            Text("\(resultado, specifier: "%.3f")")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 250, height: 80)
        .background(.backgroundComponent)
        .cornerRadius(10)
    }
}

#Preview {
    IMCResult(altura: 10, peso: 10)
}
