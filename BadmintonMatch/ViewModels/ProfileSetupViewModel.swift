//
//  ProfileSetupViewModel.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation
import Combine

final class ProfileSetupViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var selectedSkill: SkillLevel?
    
    private let userService = UserService()
    private let appState: AppState
    
    init(appState: AppState) {
        self.appState = appState
    }
    
    func saveProfile() {
        guard let skill = selectedSkill, !name.isEmpty else { return }
        
        let profile = PlayerProfile(id: UUID(), name: name, skillLevel: skill, city: "")
        userService.save(profile: profile)
        
        appState.hasProfile = true
    }
}
