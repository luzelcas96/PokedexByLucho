//
//  BaseStatsPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 16/12/22.
//

import SwiftUI

struct BaseStatsPokemon: View {
    var pokemon: Pokemon
    var body: some View {
        VStack {
            Text("Base Stats")
                .font(.title2)
                .foregroundColor(pokemon.types.first?.typeColor)
                .fontWeight(.heavy)
            
            IndividualStatPokemon(pokemon: pokemon)
        }
    }
}

struct BaseStatsPokemon_Previews: PreviewProvider {
    static var previews: some View {
        BaseStatsPokemon(pokemon: Pokemon.placeholderPokemon)
    }
}
