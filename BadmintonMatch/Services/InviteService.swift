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
    
    func acceptInvite(invite: GameInvite) {
        var updatedInvite = invite
        updatedInvite.status = .accepted
        repository.updateInvite(invite: updatedInvite)
    }
    
    func rejectInvite(invite: GameInvite) {
        var updatedInvite = invite
        updatedInvite.status = .rejected
        repository.updateInvite(invite: updatedInvite)
    }
}
