//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Игорь Чумиков on 16.08.2025.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
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
