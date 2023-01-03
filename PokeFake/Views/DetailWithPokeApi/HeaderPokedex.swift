//
//  HeaderPokedex.swift
//  PokeFake
//
//  Created by Luis Zelada on 22/12/22.
//

import SwiftUI

struct HeaderPokedex: View {
    var body: some View {
        HStack {
            Image("Pokeball")
                .resizable()
                .scaledToFit()
                .frame(minHeight: 0, maxHeight: 30)
            
            Text("Pokédex")
                .fontWeight(.heavy)
                .font(.title)
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct HeaderPokedex_Previews: PreviewProvider {
    static var previews: some View {
        HeaderPokedex()
    }
}
