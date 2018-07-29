//
//  LocationController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 29/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreLocation

class LocationController : NSObject, CLLocationManagerDelegate {
    let locationManager : CLLocationManager
    
    override init() {
        locationManager = CLLocationManager()
        super.init()
        locationManager.delegate = self
    }
    
    func test(){
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func printstuff(){
        print("outside classes variables of type object works through vc's")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var locations = locations.last!
        print(locations)
    }
}
