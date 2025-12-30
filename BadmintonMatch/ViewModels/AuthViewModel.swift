//
//  AuthViewModel.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 30/12/2025.
//

import Foundation
import Combine

final class AuthViewModel: ObservableObject {
    
    private let authService = AuthService()
    private let appState: AppState
    
    init(appState: AppState) {
        self.appState = appState
    }
    
    func login() {
        authService.login { success in
            if success {
                self.appState.isLoggedIn = true
            }
        }
    }
    
    func logout() {
        self.appState.isLoggedIn = false
    }
}
