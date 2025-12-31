//
//  PlayerRepository.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation

protocol PlayerRepository {
    func fetchPlayers() -> [PlayerProfile]
}
