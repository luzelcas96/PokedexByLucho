//
//  TagPokemonType.swift
//  PokeFake
//
//  Created by Luis Zelada on 16/12/22.
//

import SwiftUI

struct TagPokemonType: View {
    var pokemon: Pokemon
    
    var body: some View {
        HStack {
            ForEach(pokemon.types, id: \.id){ type in
                Text(type.name.capitalized)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(type.typeColor)
                    .cornerRadius(22)
            }
        }
    }
}

struct TagPokemonType_Previews: PreviewProvider {
    static var previews: some View {
        TagPokemonType(pokemon: Pokemon.placeholderPokemon)
    }
}
