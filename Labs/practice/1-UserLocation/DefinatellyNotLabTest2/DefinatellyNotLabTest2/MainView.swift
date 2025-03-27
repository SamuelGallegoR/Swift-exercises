//
//  MainView.swift
//  DefinatellyNotLabTest2
//
//  Created by Samuel Gallego Rivera on 25/03/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var locationManager = LocationManager()
    @State private var showCoordinates = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Samuel Gallego - 101435708").font(.headline)

            Button("Get Current Location") {
                locationManager.requestLocation()
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    showCoordinates = true
                }
            }

            NavigationLink(
                destination: CoordinatesView(
                    latitude: locationManager.currentLocation?.coordinate.latitude ?? 0,
                    longitude: locationManager.currentLocation?.coordinate.longitude ?? 0
                ),
                isActive: $showCoordinates
            ) {
                EmptyView()
            }
        }
        .padding()
    }
}
