//
//  MatchesViewModel.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation
import Combine

final class MatchesViewModel: ObservableObject {
    @Published var invites: [GameInvite] = []
    @Published var incomingInvites: [GameInvite] = []
    @Published var sentInvites: [GameInvite] = []
    
    private let inviteService = InviteService()
    private let currentUser = CurrentUserService.shared.currentUser
    
    init() {
        loadInvites()
    }
    
    func loadInvites() {
        let allInvites = inviteService.getInvites()
        let me = CurrentUserService.shared.currentUser
        
        invites = allInvites.filter { $0.toPlayer.id == CurrentUserService.shared.currentUser.id }
        
        incomingInvites = allInvites.filter { $0.toPlayer.id == me.id}
        sentInvites = allInvites.filter { $0.fromPlayer.id == me.id}
    }
    
    func acceptInvite(invite: GameInvite) {
        inviteService.acceptInvite(invite: invite)
        loadInvites()
    }
    
    func recejtInvite(invite: GameInvite) {
        inviteService.rejectInvite(invite: invite)
        loadInvites()
    }
}
