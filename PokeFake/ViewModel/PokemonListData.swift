//
//  PokemonListData.swift
//  PokeFake
//
//  Created by Luis Zelada on 20/12/22.
//

import Foundation

final class PokemonListData: ObservableObject {
    @Published var pokemonList: [PokemonMemberList]
    
    init() {
        pokemonList = [PokemonMemberList.placeHolderMemberList]
        Task {
            try await fetchPokemonListData()
        }
    }
    
    func fetchPokemonListData() async throws {
        let dataAsync = try? await PokeApi().getListPokemons()
        DispatchQueue.main.async {
            self.pokemonList = dataAsync!
        }
    }
    
    func addFavoritePokemon(pokemon: PokemonMemberList){
        PokemonsFavoritesSave.append(pokemon)
        print(PokemonsFavoritesSave)
    }
}
