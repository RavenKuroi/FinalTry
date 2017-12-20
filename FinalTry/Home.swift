//
//  Home.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Home: UIViewController {

    ///VARIABLES
    
    ///OUTLETS
    
    ///FUNCTIONS
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    ///ACTIONS
    
    ///VIEWS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delayWithSeconds(0.5) {
            self.performSegue(withIdentifier: "alert", sender: self)
        }
    }

}
