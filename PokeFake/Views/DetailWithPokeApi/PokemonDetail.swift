//
//  PokemonDetail.swift
//  PokeFake
//
//  Created by Luis Zelada on 20/12/22.
//

import SwiftUI

struct PokemonDetail: View {
    @StateObject var pokemonData = PokemonData()
    
    var body: some View {
        VStack(spacing: 30) {
            ImageTagsPokemon(pokemon: pokemonData.pokemonDetailData)
            AboutPokemon(pokemon: pokemonData.pokemonDetailData)
            BaseStatsPokemon(pokemon: pokemonData.pokemonDetailData)
        }
        .padding(.horizontal)
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail()
    }
}
