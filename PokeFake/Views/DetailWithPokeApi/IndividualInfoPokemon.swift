//
//  IndividualInfoPokemon.swift
//  PokeFake
//
//  Created by Luis Zelada on 16/12/22.
//

import SwiftUI

struct IndividualInfoPokemon: View {
    var imageName: AboutPokemonEnum = .Weigth
    var statValue: [String] = ["8.5 KG"]
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                imageName == .Moves ? nil : Image(imageName.rawValue)
                VStack {
                    ForEach(statValue, id: \.self) { value in
                        imageName == .Weigth ? Text("\(value)kg").font(.caption)
                        : nil
                        imageName == .Height ? Text("\(value)m").font(.caption) : nil
                        imageName == .Moves ? Text(value).font(.caption) : nil
                    }
                }
            }
            Text(imageName.rawValue)
                .font(.caption)
        }
    }
}

struct IndividualInfoPokemon_Previews: PreviewProvider {
    static var previews: some View {
        IndividualInfoPokemon()
    }
}
