//
//  SearchPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 19/12/22.
//

import SwiftUI

struct SearchPokemonList: View {
    @StateObject var pokemonList =  PokemonListData()
    @State var  searchPokemon = ""
    
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(filteredPokemon) { pokemon in
                        NavigationLink(destination: PokeDetail(pokemon: pokemon)) {
                            CardSearchPokemon(pokemonList: pokemon)
                        }
                    }
                }
            }
            .navigationTitle("Pokedex")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
            .searchable(text: $searchPokemon , prompt: "Insert the name of the pokemon")
            .disableAutocorrection(true)
        }
    }
    
    var filteredPokemon: [PokemonMemberList] {
        return searchPokemon == "" ? pokemonList.pokemonList : pokemonList.pokemonList.filter {
            $0.name.lowercased().contains(searchPokemon.lowercased())
        }
    }
}

struct SearchPokemonList_Previews: PreviewProvider {
    static var previews: some View {
        SearchPokemonList()
    }
}
