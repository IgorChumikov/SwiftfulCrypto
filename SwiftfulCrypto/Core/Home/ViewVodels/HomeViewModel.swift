//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by Игорь Чумиков on 30.08.2025.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins = [DeveloperPreview.instance.coin]
            self.portfolioCoins = [DeveloperPreview.instance.coin]
            
        }
    }
    
}
