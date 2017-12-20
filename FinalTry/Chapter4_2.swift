//
//  Chapter4_2.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Chapter4_2: UIViewController {

    ///VARIABLES
    
    ///OUTLETS
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet weak var arrow1: UIImageView!
    @IBOutlet weak var arrow2: UIImageView!
    @IBOutlet weak var arrow3: UIImageView!
    @IBOutlet weak var arrow4: UIImageView!
    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var check1Outlet: UIButton!
    @IBOutlet weak var PointOutlet: UIButton!
    @IBOutlet weak var check2Outlet: UIButton!
    @IBOutlet weak var character: UIImageView!
    
    ///FUNCTIONS
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    ///ACTIONS
    
    @IBAction func check1Action(_ sender: UIButton) {
        UIView.animate(withDuration: 1.5) {
            self.character.center.x += 294
            //change image to turn the character
        }
        delayWithSeconds(1.5) {
            UIView.animate(withDuration: 0.5, animations: {
                self.arrow1.alpha = 0
                self.arrow2.alpha = 1
            })
            self.check1Outlet.isUserInteractionEnabled = false
            self.PointOutlet.isUserInteractionEnabled = true
        }
    }
    @IBAction func pointAction(_ sender: UIButton) {
        UIView.animate(withDuration: 1.5) {
            self.character.center.y += 284
            //change image to turn the character
        }
        delayWithSeconds(1.5) {
            UIView.animate(withDuration: 0.5, animations: {
                self.arrow2.alpha = 0
                self.arrow3.alpha = 1
            })
            self.PointOutlet.isUserInteractionEnabled = false
            self.check2Outlet.isUserInteractionEnabled = true
        }
    }
    @IBAction func check2Action(_ sender: UIButton) {
        UIView.animate(withDuration: 1.5) {
            self.character.center.x -= 284
            //change image to turn the character
        }
        delayWithSeconds(1.5) {
            UIView.animate(withDuration: 0.5, animations: {
                self.arrow3.alpha = 0
                self.arrow4.alpha = 1
            })
            self.check2Outlet.isUserInteractionEnabled = false
            self.startOutlet.isUserInteractionEnabled = true
        }
    }
    @IBAction func startAction(_ sender: UIButton) {
        UIView.animate(withDuration: 1.5) {
            self.character.center.y -= 284
            //change image to turn the character
        }
        delayWithSeconds(1.5) {
            UIView.animate(withDuration: 0.5, animations: {
                self.arrow4.alpha = 0
            })
            self.startOutlet.isUserInteractionEnabled = false
        }
        UserDefaults.standard.set(true, forKey: "ch7")
    }
    
    ///VIEWS
    
    override func viewWillAppear(_ animated: Bool) {
        Singleton.shared.isPressed = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
