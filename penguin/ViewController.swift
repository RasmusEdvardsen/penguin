//
//  ViewController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 07/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import UIKit
import CoreBluetooth
import CoreLocation

class ViewController: UIViewController {

    var centralManager: CBCentralManager!
    var peripheralManager: CBPeripheralManager!
    
    var centralManagerDelegate = CentralManagerDelegate()
    var peripheralManagerDelegate = PeripheralManagerDelegate()
    
    var locationController = LocationController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationController.test()
        centralManager = CBCentralManager(delegate: centralManagerDelegate, queue: nil)
        peripheralManager = CBPeripheralManager(delegate: peripheralManagerDelegate, queue: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
