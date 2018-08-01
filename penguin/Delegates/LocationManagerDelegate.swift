//
//  LocationManagerDelegate.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 31/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

class LocationManagerDelegate : NSObject, CLLocationManagerDelegate {
    var view : MKMapView? = nil
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if view != nil {
            centerMapOnLocation(location: locations.last!.coordinate, radius: 500)
        }
    }
    
    func centerMapOnLocation(location: CLLocationCoordinate2D, radius: CLLocationDistance) {
        print("Setting new region...")
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location, radius, radius)
        view?.setRegion(coordinateRegion, animated: true)
    }
    
}
