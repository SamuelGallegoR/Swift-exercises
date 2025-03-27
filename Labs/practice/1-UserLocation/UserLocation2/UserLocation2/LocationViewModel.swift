//
//  LocationViewModel.swift
//  UserLocation2
//
//  Created by Samuel Gallego Rivera on 25/03/25.
//


import Foundation
import CoreData
import CoreLocation

class LocationViewModel: ObservableObject {
    private let context = PersistenceController.shared.container.viewContext
    private let locationManager = LocationManager()

    @Published var entries: [LocationEntry] = []

    init() {
        fetchEntries()
        locationManager.onLocationUpdate = { [weak self] location in
            self?.saveLocation(location)
        }
    }

    func fetchEntries() {
        let request: NSFetchRequest<LocationEntry> = LocationEntry.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \LocationEntry.timestamp, ascending: false)]
        entries = (try? context.fetch(request)) ?? []
    }

    func saveLocation(_ location: CLLocation) {
        let newEntry = LocationEntry(context: context)
        newEntry.timestamp = Date()
        newEntry.latitude = location.coordinate.latitude
        newEntry.longitude = location.coordinate.longitude

        do {
            try context.save()
            fetchEntries()
        } catch {
            print("Failed to save location: \(error)")
        }
    }
}
