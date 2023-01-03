//
//  ServicesDefinitions.swift
//  PokeFake
//
//  Created by Luis Zelada on 19/12/22.
//

import Foundation

enum ServicesDefinitions {
    static var baseURL: String {
        return String("https://pokeapi.co/api/v2")
    }
    
    static func getPokemonDetail(id: Int) -> String {
        return String("\(baseURL)/pokemon/\(id)")
    }
    
    static var getListPokemons: String {
        return String("https://pokedex-bb36f.firebaseio.com/pokemon.json")
    }
}

