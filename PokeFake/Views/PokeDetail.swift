//
//  PokeDetail.swift
//  PokeFake
//
//  Created by Luis Zelada on 22/12/22.
//

import SwiftUI

struct PokeDetail: View {
    @State var pokemon: PokemonMemberList
    
    var body: some View {
        VStack {
            
            HStack {
                Text(pokemon.name.capitalized)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Text("#\(pokemon.formatID)")
                    .font(.title2)
                    .fontWeight(.heavy)
            }
            .padding(.bottom, 25)
            
            TopPokemonDetail(pokemon: pokemon)
            AboutPokemonDetail(pokemon: pokemon)
                .padding(.vertical,20)
            BaseStatsDetail(pokemon: pokemon)
        }
        .padding()
    }
    
}

struct PokeDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetail(pokemon: PokemonMemberList.placeHolderMemberList)
    }
}
