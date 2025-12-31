//
//  DiscoverView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import SwiftUI

struct DiscoverView: View {
    @StateObject private var viewModel = DiscoverViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Picker("Level", selection: $viewModel.selectedSkill) {
                        Text("All").tag(SkillLevel?.none)
                        ForEach(SkillLevel.allCases) {
                            Text($0.rawValue).tag(SkillLevel?.some($0))
                        }
                    }
                }
                
                Section("Players") {
                    ForEach(viewModel.filteredPlayers) { player in
                        NavigationLink {
                            PlayerDetailView(player: player)
                        } label: {
                            VStack(alignment: .leading) {
                                Text(player.name)
                                    .font(.headline)
                                Text("\(player.skillLevel.rawValue) • \(player.city)")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search players")
        }
    }
}

#Preview {
    DiscoverView()
}
