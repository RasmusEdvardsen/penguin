//
//  CBPMDelegate.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 08/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreBluetooth

class CBPMDelegate : NSObject, CBPeripheralManagerDelegate {
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        print("entered peripheralManagerDidUpdateState")
    }
}
