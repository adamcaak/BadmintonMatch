//
//  UserService.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation

final class UserService {
    private let profileKey = "player_profile"
    
    func save(profile: PlayerProfile) {
        if let data = try? JSONEncoder().encode(profile) {
            UserDefaults.standard.set(data, forKey: profileKey)
        }
    }
    
    func loadProfile() -> PlayerProfile? {
        guard let data = UserDefaults.standard.data(forKey: profileKey),
              let profile = try? JSONDecoder().decode(PlayerProfile.self, from: data) else {
            return nil
        }
        return profile
    }
}
