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
    
    func updateInvite(invite: GameInvite) {
        guard let index = invites.firstIndex(where: { $0.id == invite.id }) else {
            return
        }
        invites[index] = invite
    }
}
