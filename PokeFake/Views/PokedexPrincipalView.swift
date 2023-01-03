//
//  PokedexPrincipalView.swift
//  PokeFake
//
//  Created by Luis Zelada on 23/12/22.
//

import SwiftUI

struct PokedexPrincipalView: View {
    @State var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Text("This views is in progress ...")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(0)
            
            SearchPokemonList()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Search Lists")
                }
                .tag(1)
            
            ListFavoritesPokemons()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorites")
                }
                .tag(2)
        }
        .tabViewStyle(.automatic)
    }
}

struct PokedexPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexPrincipalView()
    }
}
