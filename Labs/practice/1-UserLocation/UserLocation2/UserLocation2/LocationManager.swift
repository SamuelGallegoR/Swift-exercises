//
//  LocationManager.swift
//  UserLocation2
//
//  Created by Samuel Gallego Rivera on 25/03/25.
//


import Foundation
import CoreLocation


class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    private let manager = CLLocationManager()
    var onLocationUpdate: ((CLLocation) -> Void)?

    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        onLocationUpdate?(location)
        manager.stopUpdatingLocation()
    }
}
