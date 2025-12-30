//
//  LoginView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 30/12/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel: AuthViewModel
    
    init(appState: AppState) {
        _viewModel = StateObject(wrappedValue: AuthViewModel(appState: appState))
    }
    
    var body: some View {
        VStack(spacing: 24) {
            Text("BadmintonMatch")
                .font(.largeTitle)
                .bold()
            Button("Zaloguj się!") {
                viewModel.login()
            }
            .buttonStyle(.borderedProminent)
            
        }
    }
}

#Preview {
    LoginView(appState: AppState())
}
