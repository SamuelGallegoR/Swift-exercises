//
//  UserLocation2App.swift
//  UserLocation2
//
//  Created by Samuel Gallego Rivera on 25/03/25.
//

import SwiftUI

@main
struct UserLocation2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
