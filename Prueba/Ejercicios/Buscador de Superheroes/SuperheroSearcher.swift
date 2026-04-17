//
//  SuperheroSearcher.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 16/04/2026.
//

import SwiftUI

struct SuperheroSearcher: View {
    @State var superheroName: String = ""
    @State var wrapper:ApiNetwork.Wrapper? = nil
    
    var body: some View {
        VStack{
            TextField("",text: $superheroName, prompt: Text("Superman....")
                .font(.title3)
                .bold()
                .foregroundColor(.gray)
            )
            .font(.title3)
            .foregroundColor(.white)
            .padding(16)
            .border(.purple)
            .padding(8)
            .autocorrectionDisabled()
            .onSubmit {
                Task{
                    do{
                        wrapper = try await ApiNetwork().getHeroByQuery(query: superheroName)
                    }catch{
                        print("Error")
                    }
                }
            }
            
            List(wrapper?.results ?? []){ superhero in
                Text(superhero.name)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    SuperheroSearcher()
}
