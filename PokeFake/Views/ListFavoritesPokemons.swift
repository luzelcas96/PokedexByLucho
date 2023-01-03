//
//  ListFavoritesPokemons.swift
//  PokeFake
//
//  Created by Luis Zelada on 23/12/22.
//

import SwiftUI

struct ListFavoritesPokemons: View {
    
    var body: some View {
        VStack {
            Text("Favorites:")
                .font(.title)
                .fontWeight(.heavy)
            
            ForEach(PokemonsFavoritesSave, id: \.id) { poke in
               CardSearchPokemon(pokemonList: poke)
            }
            
            Spacer()
        }
    }
}

struct ListFavoritesPokemons_Previews: PreviewProvider {
    static var previews: some View {
        ListFavoritesPokemons()
    }
}
