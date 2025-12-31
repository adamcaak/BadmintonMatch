//
//  DiscoverViewModel.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation
import Combine

final class DiscoverViewModel: ObservableObject {
    @Published var players: [PlayerProfile] = []
    @Published var selectedSkill: SkillLevel?
    
    private let repository: PlayerRepository
    
    init(repository: PlayerRepository = MockPlayerRepository()) {
        self.repository = repository
        loadedPlayers()
    }
    
    func loadedPlayers() {
        players = repository.fetchPlayers()
    }
    
    var filteredPlayers: [PlayerProfile] {
        guard let skill = selectedSkill else {
            return players
        }
        return players.filter{ $0.skillLevel == skill }
    }
}
