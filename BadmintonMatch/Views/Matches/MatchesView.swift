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
                if !viewModel.incomingInvites.isEmpty {
                    Section("Invites to You") {
                        ForEach(viewModel.incomingInvites) { invite in
                            VStack(alignment: .leading) {
                                Text(invite.fromPlayer.name)
                                    .font(.headline)
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
                }
                
                if !viewModel.sentInvites.isEmpty {
                    Section("Send invites") {
                        ForEach(viewModel.sentInvites) { invite in
                            VStack(alignment: .leading) {
                                Text(invite.toPlayer.name)
                                    .font(.headline)
                                Text("Pending")
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
             }
            .navigationTitle("Matches")
            .onAppear {
                DispatchQueue.main.async {
                    viewModel.loadInvites()
                }
            }
        }
    }
}

#Preview {
    MatchesView()
}
