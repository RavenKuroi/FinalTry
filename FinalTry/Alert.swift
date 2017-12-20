//
//  Alert.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Alert: UIViewController {

    ///VARIABLES
    
    ///OUTLETS
    
    ///FUNCTIONS
    
    @IBAction func dismissAction(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "ch1")
        dismiss(animated: true, completion: nil)
    }
    
    ///ACTIONS
    
    ///VIEWS
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
