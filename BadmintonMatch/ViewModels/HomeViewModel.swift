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
            PlayerProfile(name: "Tom", skillLevel: .beginner),
            PlayerProfile(name: "Luka", skillLevel: .intermediate),
            PlayerProfile(name: "Kamil", skillLevel: .advanced)
        ]
    }
}
