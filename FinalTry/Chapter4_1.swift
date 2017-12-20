//
//  Chapter4_1.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Chapter4_1: UIViewController {

    ///VARIABLES
    
    ///OUTLETS
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet weak var switchOutlet: UIButton!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    ///FUNCTIONS
    
    ///ACTIONS
    
    @IBAction func switchAction(_ sender: UIButton) {
        if switchOutlet.currentTitle == "OFF"
        {
            switchOutlet.setTitle("ON", for: .normal)
            UIView.animate(withDuration: 0.5, animations: {
                self.image1.alpha = 0
                self.image2.alpha = 1
            })
        }
        else
        {
            switchOutlet.setTitle("OFF", for: .normal)
            UIView.animate(withDuration: 0.5, animations: {
                self.image2.alpha = 0
                self.image1.alpha = 1
            })
        }
    }
    
    ///VIEWS
    
    override func viewWillAppear(_ animated: Bool) {
        Singleton.shared.isPressed = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
