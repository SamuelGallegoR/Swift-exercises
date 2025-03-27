//
//  ContentView.swift
//  Temperature
//
//  Created by Samuel Gallego Rivera on 26/03/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \TemperatureEntry.timestamp, ascending: false)],
            animation: .default)
        private var entries: FetchedResults<TemperatureEntry>

        var body: some View {
            NavigationView {
                List(entries) { entry in
                    VStack(alignment: .leading) {
                        Text("Temperature: \(entry.value, specifier: "%.1f")°C")
                        if let timestamp = entry.timestamp {
                            Text("Recorded on \(timestamp.formatted(date: .numeric, time: .standard))")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .navigationTitle("Temperature Log")
            }
        }
}

