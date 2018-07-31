//
//  BluetoothCentralController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 31/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreBluetooth

class BluetoothCentralController {
    let delegate = BluetoothCentralDelegate()
    let manager : CBCentralManager
    
    init() {
        manager = CBCentralManager(delegate: delegate, queue: nil)
    }
    
}
