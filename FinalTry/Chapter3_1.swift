//
//  Chapter3_1.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Chapter3_1: UIViewController {

    ///VARIABLES
    
    var isLastPressed : Bool = false
    var isActivated: Bool = false
    
    ///OUTLETS
    
    @IBOutlet weak var buttonOutlet1: UIButton!
    @IBOutlet weak var buttonOutlet2: UIButton!
    @IBOutlet weak var buttonOutlet3: UIButton!
    @IBOutlet weak var buttonOutlet4: UIButton!
    @IBOutlet weak var buttonOutlet5: UIButton!
    @IBOutlet weak var buttonOutlet6: UIButton!
    @IBOutlet weak var buttonOutlet7: UIButton!
    @IBOutlet var labels: [UILabel]!
    
    ///FUNCTIONS
    
    ///ACTIONS
    
    @IBAction func button1(_ sender: UIButton) {
        if isActivated == false{
            isActivated = true
            buttonOutlet1.backgroundColor = UIColor.red
        }else{
            isActivated = false
            buttonOutlet1.backgroundColor = UIColor.white
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if isActivated == true  {
            //sound
            isActivated = false
            buttonOutlet1.backgroundColor = UIColor.white
        }
    }
    @IBAction func button3(_ sender: UIButton) {
        if isActivated == true {
            //sound
            isActivated = false
            buttonOutlet1.backgroundColor = UIColor.white
        }
    }
    @IBAction func button4(_ sender: UIButton) {
        if isActivated  == true {
            //sound
            isActivated = false
            buttonOutlet1.backgroundColor = UIColor.white
        }
    }
    @IBAction func button5(_ sender: UIButton) {
        if isActivated == true {
            //sound
            isActivated = false
            buttonOutlet1.backgroundColor = UIColor.white
        }
    }
    @IBAction func button6(_ sender: UIButton) {
        if isActivated == true {
            //sound
            isActivated = false
            buttonOutlet1.backgroundColor = UIColor.white
        }
    }
    @IBAction func button7(_ sender: UIButton) {
        if isActivated == true {
            UIView.animate(withDuration: 1.5, animations: {
                self.buttonOutlet2.backgroundColor = UIColor.red
                self.buttonOutlet3.backgroundColor = UIColor.red
                self.buttonOutlet4.backgroundColor = UIColor.red
                self.buttonOutlet5.backgroundColor = UIColor.red
                self.buttonOutlet6.backgroundColor = UIColor.red
                self.buttonOutlet7.backgroundColor = UIColor.red
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
