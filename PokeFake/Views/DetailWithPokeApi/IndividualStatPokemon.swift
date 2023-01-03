//
//  IndividualStackPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 16/12/22.
//

import SwiftUI

struct IndividualStatPokemon: View {
    var pokemon: Pokemon
    var body: some View {
        VStack(spacing: 4) {
            
            ForEach(pokemon.stats, id: \.id) { stat in
                HStack{
                    Text(stat.stringStat)
                        .foregroundColor(pokemon.types.first?.typeColor)
                        .font(.headline)
                        .fontWeight(.heavy)
                    
                    Divider()
                        .frame(minHeight: 0, maxHeight: 25)
                        .ignoresSafeArea()
                    
                    Text(String(stat.baseStat))
                    
                    Text("")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 8)
                        .background(pokemon.types.first?.typeColor)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct IndividualStatPokemon_Previews: PreviewProvider {
    static var previews: some View {
        IndividualStatPokemon(pokemon: Pokemon.placeholderPokemon)
    }
}
