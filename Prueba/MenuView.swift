import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color.blue, Color.purple],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 16) {
                        NavigationLink(destination: ContentView()) {
                            TextCard(name: "1. Hola Mundo")
                        }
                        
                        NavigationLink(destination: PruebaRectangulos()) {
                            TextCard(name: "2. Ejercicio Figuras")
                        }
                        
                        NavigationLink(destination: Calculadora()) {
                            TextCard(name: "3. Calculadora")
                        }
                        
                        NavigationLink(destination: IMCView()) {
                            TextCard(name: "4. Calculadora de IMC")
                        }
                        
                        NavigationLink(destination: ContentView()) {
                            TextCard(name: "5. Buscador de Superheroes")
                        }
                    }
                    .padding(20)
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Menú")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
        }
    }
}

struct TextCard: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
                .font(.headline)
                .bold()
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .bold))
                .opacity(0.8)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(
                colors: [Color.cyan, Color.orange],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .foregroundColor(.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 4)
    }
}

#Preview {
    MenuView()
}
