//
//  ProfileSetupView.swift
//  BadmintonMatch
//
//  Created by Łukasz Adamczak on 31/12/2025.
//

import SwiftUI

struct ProfileSetupView: View {
    @StateObject private var viewModel: ProfileSetupViewModel
    
    init(appState: AppState) {
        _viewModel = StateObject(wrappedValue: ProfileSetupViewModel(appState: appState))
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Create Acount")
                .font(.title)
                .bold()
            
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(.roundedBorder)
            
            VStack {
                ForEach(SkillLevel.allCases) { level in
                    Button(level.rawValue) {
                        viewModel.selectedSkill = level
                    }
                    .buttonStyle(.bordered)
                    .tint(viewModel.selectedSkill == level ? .blue : .gray)
                }
            }
            
            Button("Save") {
                viewModel.saveProfile()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ProfileSetupView(appState: AppState())
}
