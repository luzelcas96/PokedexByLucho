//
//  BaseStatsDetail.swift
//  PokeFake
//
//  Created by Luis Zelada on 22/12/22.
//

import SwiftUI

struct BaseStatsDetail: View {
    var pokemon: PokemonMemberList
    
    var body: some View {
        VStack {
            Text("Base Stats")
                .foregroundColor(pokemon.typeBackgroundColor)
                .font(.title2)
                .fontWeight(.heavy)
            
            HStack {
                Spacer()
                VStack {
                    HStack {
                        Image("Shield")
   
                        Text(String(pokemon.defense))
                            .font(.title)
                    }
                    
                    Text("Defense")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                Spacer()
                VStack {
                    HStack {
                        Image("Sword")
                        Text(String(pokemon.attack))
                            .font(.title)
                    }
                    Text("Attack")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                Spacer()
            }
        }
    }
}

struct BaseStatsDetail_Previews: PreviewProvider {
    static var previews: some View {
        BaseStatsDetail(pokemon: PokemonMemberList.placeHolderMemberList)
    }
}
