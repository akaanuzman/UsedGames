//
//  ContentView.swift
//  UsedGames
//
//  Created by Ahmet Kaan UZMAN on 13.12.2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let gameStore = GameStore()

    var body: some View {
        List(gameStore.games) { (game) in
            GameListItemView(game: game, numberFormatter: GameFormatter.dollarFormatter)
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
