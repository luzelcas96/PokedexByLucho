//
//  CardSearchPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 19/12/22.
//

import SwiftUI
import UIKit

struct CardSearchPokemon: View {
    var pokemonList : PokemonMemberList
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .padding(EdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1))
            
            VStack {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding(.leading,10)
                    
                    Spacer()
                    Text("N°\(pokemonList.formatID)")
                        .font(.caption)
                        .fontWeight(.heavy)
                        .foregroundColor(pokemonList.typeBackgroundColor)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 8))
                    
                }
                
                AsyncImage(url: URL(string: pokemonList.imageURL)) { pokeImage in
                    pokeImage
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                } placeholder: {
                    ProgressView()
                }

                ZStack {
                    Color(UIColor(pokemonList.typeBackgroundColor))
                    Text(pokemonList.name.capitalized)
                        .lineLimit(2)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    
                }
                .frame(minHeight: 20, idealHeight: 20, maxHeight: 35)
                
            }
            
        }
        .background(pokemonList.typeBackgroundColor)
        .aspectRatio(1, contentMode: .fit)
        .frame(width: 150)
        .cornerRadius(12)
    }
}

struct CardSearchPokemon_Previews: PreviewProvider {
    static var previews: some View {
        CardSearchPokemon(pokemonList: PokemonMemberList.placeHolderMemberList)
    }
}
