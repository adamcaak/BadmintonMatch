//
//  HomeViewModel.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var recommendedPlayers: [PlayerProfile] = []
    
    init() {
        loadMockData()
    }
    
    private func loadMockData() {
        recommendedPlayers = [
            PlayerProfile(id: UUID(), name: "Tom", skillLevel: .beginner, city: "Krakow"),
            PlayerProfile(id: UUID(), name: "Luka", skillLevel: .intermediate, city: "Warszawa"),
            PlayerProfile(id: UUID(), name: "Kamil", skillLevel: .advanced, city: "Gdańsk")
        ]
    }
}
