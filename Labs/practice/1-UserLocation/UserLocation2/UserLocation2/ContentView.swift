//
//  ContentView.swift
//  UserLocation2
//
//  Created by Samuel Gallego Rivera on 25/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = LocationViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.entries, id: \.self) { entry in
                VStack(alignment: .leading) {
                    Text("Time: \(entry.timestamp ?? Date(), formatter: dateFormatter)")
                    Text("Lat: \(entry.latitude), Lon: \(entry.longitude)")
                        .font(.caption)
                }
            }
            .navigationTitle("Location History")
        }
    }

    private var dateFormatter: DateFormatter {
        let df = DateFormatter()
        df.dateStyle = .short
        df.timeStyle = .medium
        return df
    }
}
