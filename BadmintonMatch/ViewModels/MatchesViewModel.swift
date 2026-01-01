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
    
    private let inviteService = InviteService()
    
    func loadInvites() {
        invites = inviteService.getInvites()
    }
}
