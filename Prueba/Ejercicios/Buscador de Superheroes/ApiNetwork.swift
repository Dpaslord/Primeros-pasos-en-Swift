//
//  ApiNetwork.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 17/04/2026.
//

import Foundation


class ApiNetwork{
    
    struct Wrapper:Codable{
        let response:String
        let results:[Superhero]
    }
    
    struct Superhero:Codable, Identifiable{
        let id:String
        let name:String
    }
    
    func getHeroByQuery(query:String) async throws -> Wrapper{
        let url = URL(string: "https://superheroapi.com/api/656ef41345f324bf0e7f57a2983526f5/search/\(query)")!
        
        let (data,_) = try await URLSession.shared.data(from: url)
        
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        
        return wrapper
    }
}
