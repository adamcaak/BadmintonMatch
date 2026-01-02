//
//  CurrentUserService.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 02/01/2026.
//

import Foundation

final class CurrentUserService {
    static let shared = CurrentUserService()
    
    private init() {}
    
    let currentUser = PlayerProfile(id: UUID(), name: "JA", skillLevel: .advanced, city: "Krakow")
}
