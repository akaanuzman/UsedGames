//
//  GameFormatter.swift
//  UsedGames
//
//  Created by Ahmet Kaan UZMAN on 14.12.2021.
//

import Foundation


struct GameFormatter {
    static let dollarFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        formatter.currencyCode = "USD"
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter
    }()
}
