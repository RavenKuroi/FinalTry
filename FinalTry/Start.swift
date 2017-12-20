//
//  Start.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Start: UIViewController {

    ///VARIABLES
    
    ///OUTLETS
    
    @IBOutlet weak var continueOutlet: UIButton!
    
    ///FUNCTIONS
    
    ///ACTIONS
    
    @IBAction func newAction(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "ch1")
        UserDefaults.standard.set(false, forKey: "ch1_2")
        UserDefaults.standard.set(false, forKey: "ch1_3")
        UserDefaults.standard.set(false, forKey: "ch2_2")
        UserDefaults.standard.set(false, forKey: "ch2_3")
        UserDefaults.standard.set(false, forKey: "ch3_2")
        UserDefaults.standard.set(false, forKey: "ch3_3")
        UserDefaults.standard.set(false, forKey: "end")
        
        performSegue(withIdentifier: "startToHome", sender: self)
    }
    
    @IBAction func continueAction(_ sender: UIButton) {
        performSegue(withIdentifier: "startToHome", sender: self)
    }
    
    ///VIEWS
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if UserDefaults.standard.object(forKey: "ch1") as? Bool == true
        {
            continueOutlet.isUserInteractionEnabled = true
        }
    }

}
