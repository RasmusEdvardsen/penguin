//
//  PeripheralManagerDelegate.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 16/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreBluetooth

class PeripheralManagerDelegate : NSObject, CBPeripheralManagerDelegate {
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
            peripheral.startAdvertising([CBAdvertisementDataLocalNameKey: advertisementData])
        }
    }
    
    
}
