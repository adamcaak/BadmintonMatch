//
//  PlayerProfile.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import Foundation

enum SkillLevel: String, CaseIterable, Identifiable, Decodable, Encodable {
    case beginner = "Beginner"
    case intermediate = "Intermediate"
    case advanced = "Advanced"
    
    var id: String { rawValue }
}

struct PlayerProfile: Codable, Identifiable {
    let id: UUID
    let name: String
    let skillLevel: SkillLevel
    let city: String
}
