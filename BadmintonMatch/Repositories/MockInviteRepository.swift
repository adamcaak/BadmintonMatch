//
//  MockInviteRepository.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation

final class MockInviteRepository: InviteRepository {
    static let shared = MockInviteRepository()
    
    private init() {}
    
    private var invites: [GameInvite] = []
    
    func send(invite: GameInvite) {
        invites.append(invite)
    }
    
    func fetchInvites() -> [GameInvite] {
        invites
    }
}
