//
//  ListExample.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 16/04/2026.
//

import SwiftUI


var pokemon = [
    Pokemon(id: 1, name: "Bulbasur", tipo: "Planta"),
    Pokemon(id: 2, name: "Charmander", tipo: "Fuego"),
    Pokemon(id: 3, name: "Squirtle", tipo: "Agua"),
    Pokemon(id: 4, name: "Rattata", tipo: "Normal"),
    Pokemon(id: 5, name: "Pidgy", tipo: "Volador, Normal")
]


var digimons = [
    Digimon(name: "Agumon", tipo: "Planta"),
    Digimon(name: "Graymon", tipo: "Fuego"),
    Digimon(name: "Juanmon", tipo: "Agua"),
    Digimon(name: "Davidmon", tipo: "Normal"),
    Digimon(name: "Ratamon", tipo: "Volador, Normal")
]


struct ListExample: View {
    var body: some View {
//        List{
//            ForEach(pokemon, id: \.id) { pokemon in
//                /*@START_MENU_TOKEN@*/Text(pokemon.name)/*@END_MENU_TOKEN@*/
//            }
//        }
        
//        List(digimons){ digimon in
//            Text(digimon.name)
//        }
        
        
//        List{
//            ForEach(digimons){ digimon in
//                Text(digimon.name)
//            }
//        }
        
        List{
            Section(header: Text("Pokemon")){
                ForEach(pokemon, id: \.id) { pokemon in
                    /*@START_MENU_TOKEN@*/Text(pokemon.name)/*@END_MENU_TOKEN@*/
                }
            }
            Section(header: Text("Digimon")){
                ForEach(digimons){ digimon in
                    Text(digimon.name)
                }
            }
        }.listStyle(.sidebar)
    }
}

struct Pokemon{
    let id:Int
    let name:String
    let tipo:String
}

struct Digimon: Identifiable{
    var id = UUID()
    let name:String
    let tipo:String
}

#Preview {
    ListExample()
}
