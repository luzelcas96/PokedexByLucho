//
//  Pokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 19/12/22.
//

import Foundation
import SwiftUI

struct Pokemon: Decodable {
    let id: Int
    let abilities: [Abilities]
    let image: String
    let height: Int
    let name: String
    let stats: [Stats]
    let types: [Types]
    let weight: Int
    
    enum CodingKeys: String, CodingKey {
        case abilities
        case height
        case id
        case image = "front_default"
        case name
        case oficialArtWork = "official-artwork"
        case other
        case sprites
        case stats
        case types
        case weight
    }
    
    init(id: Int, abilities: [Abilities], image: String, height: Int, name: String, stats: [Stats], types: [Types], weight: Int){
        self.id = id
        self.abilities = abilities
        self.image = image
        self.height = height
        self.name = name
        self.stats = stats
        self.weight = weight
        self.types = types
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.abilities = try container.decode([Abilities].self, forKey: .abilities)
        self.height = try container.decode(Int.self, forKey: .height)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.stats = try container.decode([Stats].self, forKey: .stats)
        self.types = try container.decode([Types].self, forKey: .types)
        self.weight = try container.decode(Int.self, forKey: .weight)
        
        let sprites =  try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .sprites)
        let other = try sprites.nestedContainer(keyedBy: CodingKeys.self, forKey: .other)
        let oficialArtWork = try other.nestedContainer(keyedBy: CodingKeys.self, forKey: .oficialArtWork)
        self.image = try oficialArtWork.decode(String.self, forKey: .image)
    }
    
    static var placeholderPokemon: Pokemon {
        .init(id: -1, abilities: [], image: "", height: 0, name: "", stats: [], types: [], weight: 0)
    }
    
}

struct Types: Decodable {
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "slot"
        case type
        case name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        
        let type = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .type)
        self.name = try type.decode(String.self, forKey: .name)
    }
    
    var typeColor: Color {
        switch name {
        case "bug":
            return Color("Bug")
        case "rock":
            return Color("Rock")
        case "fire":
            return Color("Fire")
        case "fighting":
            return Color("Fighting")
        case "ice":
            return Color("Ice")
        case "dragon":
            return Color("Dragon")
        case "fairy":
            return Color("Fairy")
        case "dark":
            return Color("Dark")
        case "ground":
            return Color("Ground")
        case "water":
            return Color("Water")
        case "poison":
            return Color("Poison")
        case "normal":
            return Color("Normal")
        case "electric":
            return Color("Electric")
        case "ghost":
            return Color("Ghost")
        case "grass":
            return Color("Grass")
        case "steel":
            return Color("Steel")
        case "psychic":
            return Color("Psychic")
        case "flying":
            return Color("Flying")
        default:
            return Color(.systemCyan)
        }
    }
}

struct Abilities: Decodable, Identifiable {
    let id = UUID()
    let name: String
    
    enum CodingKeys: CodingKey {
        case ability
        case name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let ability = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .ability)
        self.name = try ability.decode(String.self, forKey: .name)
    }
}

struct Stats: Decodable, Identifiable {
    let id = UUID()
    let baseStat: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case name
        case stat
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.baseStat = try container.decode(Int.self, forKey: .baseStat)
        
        let stat = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .stat)
        self.name = try stat.decode(String.self, forKey: .name)
    }
    
    var stringStat: String {
        switch name {
        case "hp":
            return "HP"
        case "attack":
            return "ATK"
        case "defense":
            return "DEF"
        case "special-attack":
            return "SATK"
        case "special-defense":
            return "SDEF"
        case "speed":
            return "SPD"
        default:
            return "none"
        }
    }
}
