//
//  MainTabView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 30/12/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            DiscoverView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            MatchesView()
                .tabItem {
                    Label("Matches", systemImage: "sportscourt")
                }
            
            ChatListView()
                .tabItem {
                    Label("Chat", systemImage: "bubble.left.and.bubble.right")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
