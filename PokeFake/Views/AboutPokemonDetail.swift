//
//  AboutPokemonDetail.swift
//  PokeFake
//
//  Created by Luis Zelada on 22/12/22.
//

import SwiftUI

struct AboutPokemonDetail: View {
    var pokemon: PokemonMemberList
    
    var body: some View {
        VStack {
            Text("About")
                .foregroundColor(pokemon.typeBackgroundColor)
                .font(.title2)
                .fontWeight(.heavy)
            
            HStack {
                
                VStack {
                    HStack {
                        Image("Weigth")
                            .resizable()
                            .scaledToFit()
                            .frame(minHeight: 0, maxHeight: 25)
                        
                        Text(formatStat(value:pokemon.weight))
                    }
                    Text("Weight")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                
                Divider()
                    .frame(maxWidth: 50, maxHeight: 45)
                
                VStack {
                    HStack {
                        Image("Height")
                            .resizable()
                            .scaledToFit()
                            .frame(minHeight: 0, maxHeight: 25)
                        
                        Text(formatStat(value: pokemon.height))
                    }
                    Text("Height")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
            }

            Text(pokemon.description)
        
        }
    }
    
    func formatStat(value: Int) -> String {
        String(format: "%.2f", Double(value) / 10)
    }
}

struct AboutPokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        AboutPokemonDetail(pokemon: PokemonMemberList.placeHolderMemberList)
    }
}
