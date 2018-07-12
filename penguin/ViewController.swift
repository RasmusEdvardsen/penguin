//
//  ViewController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 07/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController {

    var centralManager: CBCentralManager!
    var peripheralManager: CBPeripheralManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralManager = CBCentralManager(delegate: self, queue: nil)
        peripheralManager = CBPeripheralManager(delegate: self, queue: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}





extension ViewController: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unknown:
            print("central.state is .unknown")
        case .resetting:
            print("central.state is .resetting")
        case .unsupported:
            print("central.state is .unsupported")
        case .unauthorized:
            print("central.state is .unauthorized")
        case .poweredOff:
            print("central.state is .poweredOff")
        case .poweredOn:
            print("central.state is .poweredOn")
            centralManager.scanForPeripherals(withServices: nil)
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print("peripheralDidDiscover")
        print(advertisementData)
        /*guard let services = peripheral.services else { return }
        
        for service in services {
            print(service)
        }*/
    }
}





extension ViewController: CBPeripheralManagerDelegate{
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        switch peripheral.state {
        case .unknown:
            print("peripheral.state is .unknown")
        case .resetting:
            print("peripheral.state is .resetting")
        case .unsupported:
            print("peripheral.state is .unsupported")
        case .unauthorized:
            print("peripheral.state is .unauthorized")
        case .poweredOff:
            print("peripheral.state is .poweredOff")
        case .poweredOn:
            print("peripheral.state is .poweredOn")
            let advertisementData = "Some advertisement data here"
            peripheralManager.startAdvertising([CBAdvertisementDataLocalNameKey: advertisementData])
        }
    }
    
    
}








