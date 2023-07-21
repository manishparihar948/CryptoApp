//
//  PortfolioDataService.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 21.07.23.
//

import Foundation
import CoreData

// Setup core data
class PortfolioDataService {
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName : String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
       container = NSPersistentContainer(name: containerName)
        // This load container in this file
        container.loadPersistentStores { (_, error) in
            if let error = error {
                print("Error loading Core Data! \(error)")
            }
            self.getPortfolio()
        }
    }
    
    // MARK: - PUBLIC
    func updatePortfolio(coin: CoinModel, amount: Double) {
        if let entity = savedEntities.first(where: {$0.coinID == coin.id}) {
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                delete(entity: entity)
            }
        } else {
            add(coin: coin, amount: amount)
        }
        
        // Use above entity or this same method
        /*
        if let entity = savedEntities.first(where: { (savedEntity) -> Bool in
            return savedEntity.coinID == coin.id
        }) {
        }
         */
    }
    
    
    // MARK: - PRIVATE
    // Fetch all the data inside this container
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do {
            // We got data from this so need to save somewhere
          savedEntities =  try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching Portfolio Entities. \(error)")
        }
    }
    
    private func add(coin: CoinModel, amount: Double){
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func delete(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data. \(error)")
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
}
