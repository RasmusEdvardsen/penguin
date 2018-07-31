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

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "toDiscovery":
            let success = locationController.enableLocationServices()
            if !success {
                //todo: location service not enabled, should be enabled
                return false
            }
            break
        default:
            break
        }
        return true
    }
}
