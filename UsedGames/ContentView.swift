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
            HStack {
                VStack(alignment: .leading) {
                    Text(game.name).bold().font(.body)
                    Text(game.serialNumber).font(.caption).foregroundColor(Color(white: 0.65))
                }
                Spacer()
                Text("$50").foregroundColor(.blue)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
