//
//  LocationManagerDelegate.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 31/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreLocation
class LocationManagerDelegate : NSObject, CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locations = locations.last!
        print(locations)
    }
    
}
