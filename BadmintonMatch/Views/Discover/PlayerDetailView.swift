//
//  PlayerDetailView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerProfile
    
    @StateObject private var viewModel: PlayerDetailViewModel
    
    init(player: PlayerProfile) {
        self.player = player
        
        let mockCurrentUser = PlayerProfile(id: UUID(), name: "Lukas", skillLevel: .intermediate, city: "Krakow")
        
        _viewModel = StateObject(wrappedValue: PlayerDetailViewModel(currentUser: mockCurrentUser))
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Text(player.name)
                .font(.largeTitle)
            Text(player.skillLevel.rawValue)
            Text(player.city)
            
            Button("Invite to play") {
                viewModel.invite(player: player)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Profile player")
    }
}

#Preview {
    PlayerDetailView(player: PlayerProfile(id: UUID(), name: "Lukas", skillLevel: .advanced, city: "Krakow"))
}
