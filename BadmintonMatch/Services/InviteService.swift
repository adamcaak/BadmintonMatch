//
//  InviteService.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation

final class InviteService {
    private let repository: InviteRepository
    private(set) var invites: [GameInvite] = []
    
    init(repository: InviteRepository = MockInviteRepository.shared) {
        self.repository = repository
    }
    
    func sendInvite(to player: PlayerProfile) {
        let invite = GameInvite(
            id: UUID(),
            fromPlayer: CurrentUserService.shared.currentUser,
            toPlayer: player,
            status: .pending
        )
        invites.append(invite)
    }
    
    func getInvites() -> [GameInvite] {
        //repository.fetchInvites()
        invites
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
