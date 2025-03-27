//
//  CoordinatesView.swift
//  DefinatellyNotLabTest2
//
//  Created by Samuel Gallego Rivera on 25/03/25.
//

import SwiftUI

struct CoordinatesView: View {
    var latitude: Double
    var longitude: Double

    var body: some View {
        VStack(spacing: 15) {
            Text("Samuel Gallego - 101435708").font(.headline)
            Text("Latitude: \(latitude)")
            Text("Longitude: \(longitude)")
        }
        .padding()
    }
}
