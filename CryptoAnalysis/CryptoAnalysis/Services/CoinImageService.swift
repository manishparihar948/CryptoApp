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
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin:CoinModel){
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: coin.id, folderName: folderName) {
            image = savedImage
            // print("Retrieved image from File Manager")
        } else {
            downloadCoinImage()
            // print("Downloading image now")
        }
    }
    
    private func downloadCoinImage() {
        // Saving images to the file manager so we dont have to
        // download image on every time we interect with the view
        // print("Downloading image now")
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion(completion:), receiveValue: {[weak self] (returnedImage) in
                guard let self = self, let downloadedImage = returnedImage else { return }
                self.image = downloadedImage
                self.imageSubscription?.cancel()
                self.fileManager.saveImage(image: downloadedImage, imageName: self.imageName, folderName: self.folderName)
            })
        
    }
}



