//
//  HomeView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                Section("Recommended players") {
                    ForEach(viewModel.recommendedPlayers, id: \.name) { player in
                        VStack(alignment: .leading) {
                            Text(player.name)
                                .font(.headline)
                            Text(player.skillLevel.rawValue)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
