//
//  PlayerDetailView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerProfile
    
    var body: some View {
        VStack(spacing: 16) {
            Text(player.name)
                .font(.largeTitle)
            Text(player.skillLevel.rawValue)
            Text(player.city)
            
            Button("Invite to play") {
                //future
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Profile player")
    }
}

//#Preview {
//    PlayerDetailView()
//}
