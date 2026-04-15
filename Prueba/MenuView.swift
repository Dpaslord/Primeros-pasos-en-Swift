import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Menu")
                    .font(.system(size: 30, weight: .bold))
                    .padding(10)
                    .background(LinearGradient(
                        colors: [Color.cyan, Color.orange],
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)
                
                NavigationLink(destination: ContentView()) {
                    Text("1. ContentView")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(LinearGradient(
                            colors: [Color.cyan, Color.orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: PruebaRectangulos()) {
                    Text("2. Ejercicio de Figuras")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(LinearGradient(
                            colors: [Color.cyan, Color.orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: Calculadora()) {
                    Text("3. Calculadora")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(LinearGradient(
                            colors: [Color.cyan, Color.orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ContentView()) {
                    Text("4. App 3")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(LinearGradient(
                            colors: [Color.cyan, Color.orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ContentView()) {
                    Text("5. App 4")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(LinearGradient(
                            colors: [Color.cyan, Color.orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(
                colors: [Color.blue, Color.purple],
                startPoint: .top,
                endPoint: .bottom
            ))
        }
    }
}

#Preview {
    MenuView()
}
