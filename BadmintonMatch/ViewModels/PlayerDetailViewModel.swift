//
//  PlayerDetailViewModel.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation
import Combine

final class PlayerDetailViewModel: ObservableObject {
    
    private let inviteService: InviteService
    private let currentUser: PlayerProfile
    
    init(inviteService: InviteService = InviteService(), currentUser: PlayerProfile) {
        self.inviteService = inviteService
        self.currentUser = currentUser
    }
    
    func invite(player: PlayerProfile) {
        inviteService.sendInvite(from: currentUser, to: player)
    }
    
}
