//
//  HomeViewModel.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 18.07.23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var allCoins : [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
        /*
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
        */
    }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink{ [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
