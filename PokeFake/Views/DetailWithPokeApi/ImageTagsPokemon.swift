//
//  ImageTagsPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 20/12/22.
//

import SwiftUI

struct ImageTagsPokemon: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                
                Text(pokemon.name.capitalized)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Text("##00" + String(pokemon.id))
                    .fontWeight(.medium)
            }
            
            HStack {
                
                AsyncImage(url: URL(string: pokemon.image)) { pokeImage in
                    pokeImage
                        .resizable()
                        .scaledToFit()
                    
                } placeholder: {
                    ProgressView()
                }
    
            }
            
            TagPokemonType(pokemon: pokemon)
        }
    }
}

struct ImageTagsPokemon_Previews: PreviewProvider {
    static var previews: some View {
        ImageTagsPokemon(pokemon: Pokemon.placeholderPokemon)
    }
}
