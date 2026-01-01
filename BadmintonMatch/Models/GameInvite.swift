//
//  GameInvite.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation

enum InviteStatus: String, Codable {
    case pending
    case accepted
    case rejected
}

struct GameInvite: Identifiable, Codable {
    let id: UUID
    let fromPlayer: PlayerProfile
    let toPlayer: PlayerProfile
    let status: InviteStatus
}
