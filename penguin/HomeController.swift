//
//  HomeController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 29/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import UIKit
import CoreBluetooth

var locationController = LocationController()
var bluetoothCentralController = BluetoothCentralController()
var bluetoothPeripheralController = BluetoothPeripheralController()

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //todo: make a popup that says we need access to location services
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "toDiscovery":
            let success = locationController.enableLocationServices()
            if !success {
                //todo: prompt that location services are needed
                return false
            }
            break
        default:
            break
        }
        return true
    }
}
