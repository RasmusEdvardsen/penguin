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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //todo: also find out how to stop location search again on back pressed.
        switch segue.identifier!.lowercased() {
        case "todiscovery":
            let success = locationController.enableLocationServices()
            if !success {
                //todo: cancel segue here!
            }
            break
        default:
            break
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
