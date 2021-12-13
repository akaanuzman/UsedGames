//
//  UsedGamesApp.swift
//  UsedGames
//
//  Created by Ahmet Kaan UZMAN on 13.12.2021.
//

import SwiftUI

@main
struct UsedGamesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
