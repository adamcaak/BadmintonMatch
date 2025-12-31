//
//  RootView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 30/12/2025.
//

import SwiftUI

struct RootView: View {
    @StateObject private var appState = AppState()
    
    var body: some View {
        Group {
            if !appState.isLoggedIn {
                LoginView(appState: appState)
            } else if !appState.hasProfile {
                ProfileSetupView(appState: appState)
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    RootView()
}
