//
//  ViewController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 07/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import UIKit
import CoreBluetooth

let centralDelegate = CBCMDelegate()
let peripheralDelegate = CBPMDelegate()
let centralManager = CBCentralManager()
let peripheralManager = CBPeripheralManager()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        centralManager.delegate = centralDelegate
        
        peripheralManager.delegate = peripheralDelegate
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
