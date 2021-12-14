//
//  GameListItemView.swift
//  UsedGames
//
//  Created by Ahmet Kaan UZMAN on 14.12.2021.
//

import SwiftUI

struct GameListItemView: View {
    let game: GameModel
    let numberFormatter: NumberFormatter
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(game.name).bold().font(.body)
                Text(game.serialNumber).font(.caption).foregroundColor(Color(white: 0.65))
            }
            Spacer()
            Text(NSNumber(value: game.priceInDollars), formatter: numberFormatter).foregroundColor(game.priceInDollars > 30 ? .blue : .gray)
        }.padding(.vertical, 6)
    }
}

struct GameListItemView_Previews: PreviewProvider {
    static var previews: some View {
        GameListItemView(game: GameModel(), numberFormatter: GameFormatter.dollarFormatter)
    }
}
