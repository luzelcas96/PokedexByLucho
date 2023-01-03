//
//  PokemonList2.swift
//  PokeFake
//
//  Created by Luis Zelada on 22/12/22.
//

import Foundation
import SwiftUI

struct PokemonMemberList: Decodable, Identifiable {
    let id: Int
    let attack: Int
    let defense: Int
    let description: String
    let evolutionChain: [EvolutionChain]?
    let height: Int
    let imageURL: String
    let name: String
    let type: String
    let weight: Int

    enum CodingKeys: String, CodingKey {
        case attack
        case defense
        case description
        case evolutionChain
        case height
        case id
        case imageURL = "imageUrl"
        case name
        case type
        case weight
    }
    
    init(attack: Int, defense: Int, description: String, evolutionChain: [EvolutionChain], height: Int, id: Int, imageURL: String, name: String, type: String, weight: Int) {
        self.attack = attack
        self.defense = defense
        self.description = description
        self.evolutionChain = evolutionChain
        self.height = height
        self.id = id
        self.imageURL = imageURL
        self.name = name
        self.type = type
        self.weight = weight
    }

    static var placeHolderMemberList: PokemonMemberList {
        .init(attack: 0, defense: 0, description: "", evolutionChain: [], height: 0, id: -1, imageURL: "", name: "", type: "", weight: 0)
    }
    
    var typeBackgroundColor: Color {
        switch type {
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
    
    var formatID: String {
        String(format: "%03d", id)
    }
}

struct EvolutionChain: Decodable, Identifiable {
    let id = UUID()
    let name: String
    
    enum CodingKeys: CodingKey {
        case name
    }
}
