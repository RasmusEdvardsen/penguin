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

class HomeController: UIViewController {

    var centralManager: CBCentralManager!
    var peripheralManager: CBPeripheralManager!
    
    var centralManagerDelegate = CentralManagerDelegate()
    var peripheralManagerDelegate = PeripheralManagerDelegate()
    
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
