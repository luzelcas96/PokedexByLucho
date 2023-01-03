//
//  PokeApi.swift
//  PokeFake
//
//  Created by Luis Zelada on 19/12/22.
//

import Foundation

final class PokeApi {
    
    func getPokemonDetailed(id: Int) async throws -> Pokemon {
        guard let url = URL(string: ServicesDefinitions.getPokemonDetail(id: id)) else {
            throw URLErrors.emptyURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let pokemonDetail = try JSONDecoder().decode(Pokemon.self, from: data)
        return pokemonDetail
    }

    func getListPokemons() async throws -> [PokemonMemberList]? {
        guard let url =  URL(string: ServicesDefinitions.getListPokemons) else {
            throw URLErrors.emptyURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        guard let data = data.parseData(removeString: "null,") else { return nil }
        let pokemonsList = try JSONDecoder().decode([PokemonMemberList].self, from: data)
        return pokemonsList
    }
    
