//
//  InviteRepository.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 01/01/2026.
//

import Foundation

protocol InviteRepository {
    func send(invite: GameInvite)
    func fetchInvites() -> [GameInvite]
    func updateInvite(invite: GameInvite)
}
