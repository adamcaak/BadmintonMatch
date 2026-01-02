//
//  MatchesView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import SwiftUI

struct MatchesView: View {
    @StateObject private var viewModel = MatchesViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.invites) { invite in
                    VStack(alignment: .leading) {
                        Text(invite.fromPlayer.name)
                        Text(invite.status.rawValue)
                            .foregroundStyle(.secondary)
                        
                        if invite.status == .pending {
                            HStack {
                                Button("Accept") {
                                    viewModel.acceptInvite(invite: invite)
                                }
                                .buttonStyle(.borderedProminent)
                                
                                Button("Reject") {
                                    viewModel.recejtInvite(invite: invite)
                                }
                                .buttonStyle(.bordered)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Matches")
            .onAppear {
                viewModel.loadInvites()
            }
        }
    }
}

#Preview {
    MatchesView()
}
