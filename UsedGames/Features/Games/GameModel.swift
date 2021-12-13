//
//  GameModel.swift
//  UsedGames
//
//  Created by Ahmet Kaan UZMAN on 13.12.2021.
//

import Foundation


struct GameModel : Identifiable {
    var id: UUID = UUID()
    var name: String
    var priceInDollars : Double
    var serialNumber : String
    var dateCreated : Date
    
    init(name: String,priceInDollars: Double,serialNumber: String,dateCreated: Date) {
        self.name = name
        self.priceInDollars = priceInDollars
        self.serialNumber = serialNumber
        self.dateCreated = dateCreated
    }
    
    init(random: Bool = false) {
        if random {
            let conditions: [String] = ["New","Mint","Used"]
            var randomIndex : UInt32 = arc4random_uniform(UInt32(conditions.count))
//            let randomCondition : String = conditions[Int(randomIndex)]
            
            let names : [String] = ["Resident Evil","Gears Of War","Halo","God of War"]
            randomIndex = arc4random_uniform(UInt32(names.count))
            let randomName : String = "\(names[Int(randomIndex)]) \(randomIndex)"
            
            randomIndex = arc4random_uniform(UInt32(6))
//            let randomTitle : String = "\(randomCondition) \(randomName) \(Int(randomIndex))"
            let serialNumber : String = UUID().uuidString.components(separatedBy: "-").first ?? "A1B2C3"
            let priceInDollars : Double = Double(arc4random_uniform(UInt32(70)))
            
            self.init(name: randomName, priceInDollars: priceInDollars, serialNumber: serialNumber,dateCreated: Date())
        } else {
            self.init(name: "", priceInDollars: 0, serialNumber: "A1B2C3", dateCreated: Date())
        }
        
    }
}
