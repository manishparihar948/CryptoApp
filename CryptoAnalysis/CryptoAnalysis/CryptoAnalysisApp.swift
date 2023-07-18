//
//  CryptoAnalysisApp.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 17.07.23.
//

import SwiftUI

@main
struct CryptoAnalysisApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
