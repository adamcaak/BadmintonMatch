//
//  AppState.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 30/12/2025.
//

import Foundation
import Combine

final class AppState: ObservableObject {
    @Published var isLoggedIn: Bool = false
}
