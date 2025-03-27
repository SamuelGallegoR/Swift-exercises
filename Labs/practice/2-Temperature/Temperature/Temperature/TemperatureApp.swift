//
//  TemperatureApp.swift
//  Temperature
//
//  Created by Samuel Gallego Rivera on 26/03/25.
//

import SwiftUI

@main
struct TemperatureApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        let context = persistenceController.container.viewContext
        let newEntry = TemperatureEntry(context: context)
        newEntry.value = fetchCurrentTemperature()
        newEntry.timestamp = Date()
        
        try? context.save()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

func fetchCurrentTemperature() -> Double {
    return Double.random(in: -10...40)
}
