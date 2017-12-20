//
//  Chapter3_2.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Chapter3_2: UIViewController {

    ///VARIABLES
    
    ///OUTLETS
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    ///FUNCTIONS
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    ///ACTIONS
    
    @IBAction func button100(_ sender: UIButton) {
        button1.isUserInteractionEnabled = false
        button1.setTitle("true", for: .normal)
        if button1.isUserInteractionEnabled == false && button2.isUserInteractionEnabled == false{
            UserDefaults.standard.set(true, forKey: "ch6")
        }
    }
    @IBAction func button60(_ sender: UIButton) {
        button2.isUserInteractionEnabled = false
        button2.setTitle("true", for: .normal)
        if button1.isUserInteractionEnabled == false && button2.isUserInteractionEnabled == false{
            UserDefaults.standard.set(true, forKey: "ch6")
        }
    }
    @IBAction func button314(_ sender: UIButton) {
        button4.isUserInteractionEnabled = false
        button4.setTitle("wrong", for: .normal)
        delayWithSeconds(2) {
            self.button4.isUserInteractionEnabled = true
            self.button4.setTitle("3,14", for: .normal)
        }
    }
    @IBAction func button05(_ sender: UIButton) {
        button3.isUserInteractionEnabled = false
        button3.setTitle("wrong", for: .normal)
        delayWithSeconds(2) {
            self.button3.isUserInteractionEnabled = true
            self.button3.setTitle("0,5", for: .normal)
        }
    }
    @IBAction func button10(_ sender: UIButton) {
        button5.isUserInteractionEnabled = false
        button5.setTitle("wrong", for: .normal)
        delayWithSeconds(2) {
            self.button5.isUserInteractionEnabled = true
            self.button5.setTitle("-10", for: .normal)
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
