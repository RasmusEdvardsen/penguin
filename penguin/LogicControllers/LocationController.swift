//
//  LocationController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 29/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreLocation

class LocationController : NSObject {
    let locationManager = CLLocationManager()
    let locationManagerDelegate = LocationManagerDelegate()
    
    override init() {
        super.init()
        locationManager.delegate = locationManagerDelegate
    }
    
    func enableLocationServices() -> Bool {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            // Request when-in-use authorization initially
            locationManager.requestAlwaysAuthorization()
            print("notdetermined")
            break
            
        case .restricted, .denied:
            // Disable location features
            print("restriced, denied")
            locationManager.requestAlwaysAuthorization()
            break
            
        case .authorizedWhenInUse:
            // Enable basic location features
            print("authorizedwheninuse")
            locationManager.requestAlwaysAuthorization()
            break
            
        case .authorizedAlways:
            // Enable any of your app's location features
            print("authorizedalways")
            return true
        }
        return false;
    }
    
    func start(){
        locationManager.startUpdatingLocation()
    }
}
