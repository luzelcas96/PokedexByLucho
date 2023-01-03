//
//  PokemonData.swift
//  PokeFake
//
//  Created by Luis Zelada on 19/12/22.
//

import Foundation
import SwiftUI

final class PokemonData: ObservableObject {
    @Published var pokemonDetailData: Pokemon
    
    init() {
        pokemonDetailData = Pokemon.placeholderPokemon
        Task {
           try await fetchPokemonDetailData()
        }
    }
    
    func fetchPokemonDetailData() async throws {
        let dataAsync = try await PokeApi().getPokemonDetailed(id: 6)
        DispatchQueue.main.async {
            self.pokemonDetailData = dataAsync
        }
    }
}

