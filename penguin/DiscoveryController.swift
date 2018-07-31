//
//  DiscoveryController.swift
//  penguin
//
//  Created by Rasmus Edvardsen on 29/07/2018.
//  Copyright © 2018 penguin. All rights reserved.
//

import UIKit

class DiscoveryController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        locationController.start()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        locationController.stop()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }*/
}
