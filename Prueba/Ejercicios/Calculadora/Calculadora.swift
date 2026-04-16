import SwiftUI

struct Calculadora: View {
    @State var resultado: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            // Título
            Label("Calculadora", systemImage: "candybarphone")
                .font(.system(size: 40, weight: .bold))
                .padding()
                .background(Color.blue)
                .foregroundStyle(Color.white)
                .cornerRadius(15)
            
            // Pantalla de la calculadora
            TextField("Escribe la operación", text: $resultado)
                .font(.title)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .multilineTextAlignment(.trailing)

            
            // Botones de la calculadora
            VStack(spacing: 15) {
                
                HStack {
                    BotonCalc(texto: "Clear", valorMatematico: "Clear", accion: botonPulsado)
                    BotonCalc(texto: "+", valorMatematico: "+", accion: botonPulsado)
                    
                }
                
                HStack {
                    BotonCalc(texto: "1", valorMatematico: "1",accion: botonPulsado)
                    BotonCalc(texto: "2", valorMatematico: "2",accion: botonPulsado)
                    BotonCalc(texto: "3", valorMatematico: "3",accion: botonPulsado)
                    BotonCalc(texto: "-", valorMatematico: "-",accion: botonPulsado)
                }
                
                HStack {
                    BotonCalc(texto: "4", valorMatematico: "4",accion: botonPulsado)
                    BotonCalc(texto: "5", valorMatematico: "5",accion: botonPulsado)
                    BotonCalc(texto: "6", valorMatematico: "6",accion: botonPulsado)
                    BotonCalc(texto: "x", valorMatematico: "*",accion: botonPulsado)
                }
                
                HStack {
                    BotonCalc(texto: "7", valorMatematico: "7", accion: botonPulsado)
                    BotonCalc(texto: "8", valorMatematico: "8", accion: botonPulsado)
                    BotonCalc(texto: "9", valorMatematico: "9", accion: botonPulsado)
                    BotonCalc(texto: "÷", valorMatematico: "/", accion: botonPulsado)
                }
                                
                HStack {
                    BotonCalc(texto: "0", valorMatematico: "0", accion: botonPulsado)
                    BotonCalc(texto: ",", valorMatematico: ".", accion: botonPulsado)
                    BotonCalc(texto: "=", valorMatematico: "=", accion: botonPulsado)
                }
            }
            
            Spacer()
        }
        .padding()
    }
    
    //Funcion al pulsar los botones
    func botonPulsado(tecla: String) {
            if tecla == "Clear" {
                resultado = ""
            } else if tecla == "=" {
                resultado = calcularResultado(operacion: resultado)
            } else {
                resultado += tecla
            }
        }
    
    //Funcion para hacer la operacion
    func calcularResultado(operacion: String) -> String {
        if operacion.isEmpty {
            return ""
        }
        
        let expresion = NSExpression(format: operacion)
        if let resultadoFinal = expresion.expressionValue(with: nil, context: nil) as? Double {
            if resultadoFinal.isInfinite || resultadoFinal.isNaN {
                return "Syntax Error"
            }
            return String(resultadoFinal)
        }
        
        return "Syntax Error"
    }
}
struct BotonCalc: View {
    var texto: String
    var valorMatematico: String
    var accion: (String) -> Void
    
    var body: some View {
        Button(action: {
            accion(valorMatematico)
        }) {
            Text(texto)
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color.blue.opacity(0.1))
                .foregroundStyle(.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    Calculadora()
}
