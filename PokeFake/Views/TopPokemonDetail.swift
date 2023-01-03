//
//  TopPokemonDetail.swift
//  PokeFake
//
//  Created by Luis Zelada on 22/12/22.
//

import SwiftUI

struct TopPokemonDetail: View {
    @StateObject var pokemonVM = PokemonListData()
    var pokemon: PokemonMemberList
    
    var body: some View {
        
        VStack { 
            Button {
                pokemonVM.addFavoritePokemon(pokemon: pokemon)
            } label: {
                Image(systemName: "star.fill")
                    .foregroundColor(pokemon.typeBackgroundColor)
            }
            .padding(.bottom, 12)
            
            AsyncImage(url: URL(string: pokemon.imageURL)) { pokeImage in
                pokeImage
                    .resizable()
                    .scaledToFit()
                    .frame(minHeight: 0, maxHeight: 220)
                
            } placeholder: {
                ProgressView()
            }
            
            
            Text(pokemon.type.capitalized)
                .foregroundColor(.white)
                .font(.subheadline)
                .fontWeight(.heavy)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(pokemon.typeBackgroundColor)
                .cornerRadius(22)
        }
    }
}

struct TopPokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        TopPokemonDetail(pokemon: PokemonMemberList.placeHolderMemberList)
    }
}
