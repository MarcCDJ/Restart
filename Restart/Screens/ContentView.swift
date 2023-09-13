//
//  ContentView.swift
//  Restart
//
//  Created by Marc Cruz on 9/6/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
