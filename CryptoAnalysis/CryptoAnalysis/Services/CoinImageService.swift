//
//  CoinImageService.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 18.07.23.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    @Published var image : UIImage? = nil
    
    var imageSubscription : AnyCancellable?
    private let coin:CoinModel
    
    init(coin:CoinModel){
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion(completion:), receiveValue: {[weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
