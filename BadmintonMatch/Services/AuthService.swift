//
//  AuthService.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 30/12/2025.
//

import Foundation

final class AuthService {
    func login(completion: @escaping (Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(true)
        }
    }
    
    func logout() {
        //later
    }
}
