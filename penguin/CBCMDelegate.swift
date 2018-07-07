//
//  CBCMDelegate.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 08/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import Foundation
import CoreBluetooth

class CBCMDelegate: NSObject, CBCentralManagerDelegate {
    override init(){
        super.init()
    }
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print("hi")
    }
}
