//
//  CentralManagerDelegate.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 16/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreBluetooth

class BluetoothCentralDelegate : NSObject, CBCentralManagerDelegate {
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
            central.scanForPeripherals(withServices: nil, options: nil)
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print("\n\n\nperipheralDidDiscover")
        print(advertisementData)
        print("End"+" of advertisementdata\n\n\n")
    }
}
