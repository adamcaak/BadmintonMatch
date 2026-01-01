//
//  InviteService.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation

final class InviteService {
    private let repository: InviteRepository
    
    init(repository: InviteRepository = MockInviteRepository.shared) {
        self.repository = repository
    }
    
    func sendInvite(from: PlayerProfile, to: PlayerProfile) {
        let invite = GameInvite(
            id: UUID(), fromPlayer: from, toPlayer: to, status: .pending
        )
        repository.send(invite: invite)
    }
    
    func getInvites() -> [GameInvite] {
        repository.fetchInvites()
    }
}
