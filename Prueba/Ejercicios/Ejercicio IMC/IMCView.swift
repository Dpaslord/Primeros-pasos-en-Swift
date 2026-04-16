//
//  IMCView.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 16/04/2026.
//

import SwiftUI

struct IMCView: View {
    
 /*   init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
  }  */
    
    @State var gender:Int = 0
    @State var height:Double = 150
    @State var edad:Int = 0
    @State var peso:Int = 0
    @State var resultado:Int = 0

    
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            
            HeightCalculator(selectedHeight: $height)
            HStack{
                CounterButton(name: "Edad", incremento: $edad)
                CounterButton(name: "Peso", incremento: $peso)
            }
            CalculatorButton(altura: height, peso: Double(peso))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar{
            ToolbarItem(placement: .principal){
                Text("IMC Calculator").foregroundColor(.white)
            }
        }
        
        //.navigationTitle("IMC Calculator")
            
    }
}

struct ToggleButton: View {
    
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender:Int
    
    
    var body: some View {
        
        let color = if (gender == selectedGender){
            Color.backgroundComponentSelected
        } else {
            Color.backgroundComponent
        }
        
        Button(action: {
            selectedGender = gender
        }){
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 100)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }
    }
}

struct InformationText: View {
    let text:String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}


struct TitleText: View {
    let text:String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}

struct HeightCalculator: View{
    @Binding var selectedHeight: Double
    
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in:100...220, step: 1).frame(width: 300).accentColor(.purple)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)

    }
}

struct CounterButton:View {
    let name:String
    @Binding var incremento:Int
    var body: some View {
        VStack{
            TitleText(text: name)
            
            if name == "Peso" {
                InformationText(text: "\(incremento) kg")
            } else {
                InformationText(text: "\(incremento) años")
            }
            
            HStack{
                Button(action: {
                    if name == "Edad" {
                        incremento -= 1
                        if incremento < 0 {
                            incremento = 0
                        }
                    }else {
                        incremento -= 5
                        if incremento < 0 {
                            incremento = 0
                        }
                    }
                }){
                    ZStack{
                        Circle().foregroundColor(.purple)
                        Image(systemName: "minus")
                            .foregroundColor(.white)
                    }.frame(width: 50)
                }
                
                Button(action: {
                    if name == "Edad" {
                        incremento += 1
                    }else {
                        incremento += 5
                    }
                }){
                    ZStack{
                        Circle().foregroundColor(.purple)
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                    }.frame(width: 50)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}


struct CalculatorButton:View {
    var altura:Double
    var peso:Double
    var body: some View {
        NavigationStack{
            NavigationLink(destination:{IMCResult(altura: altura, peso: peso)}){
                Text("Calcular")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
    
    
}

#Preview {
    IMCView()
}
