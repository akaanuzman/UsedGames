//
//  GameStore.swift
//  UsedGames
//
//  Created by Ahmet Kaan UZMAN on 14.12.2021.
//

import Foundation


struct GameStore {
    var games: [GameModel] = []
    
    init() {
        for _ in 0..<5{
            createGame()
        }
    }
    
     @discardableResult mutating func createGame() -> GameModel {
        let game = GameModel(random: true)
        games.append(game)
        return game
    }
}
