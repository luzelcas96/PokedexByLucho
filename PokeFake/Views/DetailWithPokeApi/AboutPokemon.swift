//
//  AboutPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 16/12/22.
//

import SwiftUI

struct AboutPokemon: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text("About")
                .foregroundColor(pokemon.types.first?.typeColor)
                .font(.title2)
                .fontWeight(.heavy)
            
            HStack {
                IndividualInfoPokemon(imageName:.Weigth, statValue: [formatData(value: pokemon.weight)])
                    .padding([.leading,.trailing])
                
                Divider()
                    .frame(maxHeight: 45)
                
                IndividualInfoPokemon(imageName: .Height, statValue:[formatData(value: pokemon.height)])
                    .padding([.leading,.trailing])
                
                Divider()
                    .frame(maxHeight: 45)
                
                IndividualInfoPokemon(imageName: .Moves, statValue: ["Mega-Punch", "Fire-Punch"])
                    .padding([.leading,.trailing])
            }
            
            Text("It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.")
                .fontWeight(.regular)
                .font(.subheadline)
                .lineLimit(2)
            
        }
    }
    
    func formatData(value: Int) -> String {
        let dValue = Double(value)
        return String(format: "%.2f", dValue / 10)
    }
}

//struct AboutPokemon_Previews: PreviewProvider {
//    static var previews: some View {
//        AboutPokemon()
//    }
//}
