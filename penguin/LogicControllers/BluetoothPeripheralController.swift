//
//  BluetoothPeripheralController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 31/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreBluetooth

class BluetoothPeripheralController {
    let delegate = BluetoothPeripheralDelegate()
    let manager : CBPeripheralManager
    
    init() {
        manager = CBPeripheralManager(delegate: delegate, queue: nil)
    }
}
