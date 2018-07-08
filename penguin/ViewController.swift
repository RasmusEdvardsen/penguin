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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let centralDelegate = CBCMDelegate()
        let peripheralDelegate = CBPMDelegate()
        let centralManager = CBCentralManager()
        centralManager.delegate = centralDelegate
        let peripheralManager = CBPeripheralManager()
        peripheralManager.delegate = peripheralDelegate
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
