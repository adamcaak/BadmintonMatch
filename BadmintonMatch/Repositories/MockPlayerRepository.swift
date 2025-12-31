//
//  MockPlayerRepository.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation

final class MockPlayerRepository: PlayerRepository {
    
    func fetchPlayers() -> [PlayerProfile] {
        [
            PlayerProfile(
                id: UUID(),
                name: "Adam",
                skillLevel: .beginner,
                city: "Warszawa"
            ),
            PlayerProfile(
                id: UUID(),
                name: "Kasia",
                skillLevel: .intermediate,
                city: "Kraków"
            ),
            PlayerProfile(
                id: UUID(),
                name: "Tomek",
                skillLevel: .advanced,
                city: "Gdańsk"
            )
        ]
    }
}
