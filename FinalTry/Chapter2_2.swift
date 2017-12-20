//
//  ViewController3.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class Chapter2_2: UIViewController, UIDragInteractionDelegate, UIDropInteractionDelegate {
    
    ///VARIABLES
    
    var dropVX: CGFloat!
    var dropVY: CGFloat!
    var image1X: CGFloat!
    var image1Y: CGFloat!
    var image2X: CGFloat!
    var image2Y: CGFloat!
    var image3X: CGFloat!
    var image3Y: CGFloat!
    var image4X: CGFloat!
    var image4Y: CGFloat!
    
    ///OUTLETS
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet weak var imageDrop: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    ///FUNCTIONS
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem] {
        if let image = image1 {
            let prov = NSItemProvider(object: image as! NSItemProviderWriting)
            let item = UIDragItem(itemProvider: prov)
            return[item]
        }
        else if let image = image2{
            let prov = NSItemProvider(object: image as! NSItemProviderWriting)
            let item = UIDragItem(itemProvider: prov)
            return[item]
        }
        else if let image = image3{
            let prov = NSItemProvider(object: image as! NSItemProviderWriting)
            let item = UIDragItem(itemProvider: prov)
            return[item]
        }
        else if let image = image4{
            let prov = NSItemProvider(object: image as! NSItemProviderWriting)
            let item = UIDragItem(itemProvider: prov)
            return[item]
        }
        else{
            return[]
        }
    }
    
    func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal {
        let dropLocation = session.location(in: imageDrop)
        
        
        let operation: UIDropOperation
        
        if imageDrop.frame.contains(dropLocation) {
            operation = session.localDragSession == nil ? .copy : .move
        } else {
            operation = .cancel
        }
        return UIDropProposal(operation: operation)
    }
    
    ///ACTIONS
    
    @IBAction func panImage1(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let mview = sender.view{
            mview.center = CGPoint(x: image1.center.x + translation.x, y: image1.center.y + translation.y)
        }
        if sender.state == .ended{
            UIView.animate(withDuration: 1, animations: {
                self.image1.center.x = self.image1X
                self.image1.center.y = self.image1Y
            })
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func panImage2(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let mview = sender.view{
            mview.center = CGPoint(x: image2.center.x + translation.x, y: image2.center.y + translation.y)
        }
        if sender.state == .ended{
            if(image2.center.x > imageDrop.frame.minX && image2.center.x < imageDrop.frame.maxX && image2.center.y > imageDrop.frame.minY && image2.center.y < imageDrop.frame.maxY) {
                
                image2.center.x = dropVX
                image2.center.y = dropVY
                image1.isUserInteractionEnabled = false
                image3.isUserInteractionEnabled = false
                image4.isUserInteractionEnabled = false
                UserDefaults.standard.set(true, forKey: "ch5")
            } else {
                UIView.animate(withDuration: 1, animations: {
                    self.image2.center.x = self.image2X
                    self.image2.center.y = self.image2Y
                })
                image1.isUserInteractionEnabled = true
                image3.isUserInteractionEnabled = true
                image4.isUserInteractionEnabled = true
                UserDefaults.standard.set(false, forKey: "ch5")
            }
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func panImage3(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let mview = sender.view{
            mview.center = CGPoint(x: image3.center.x + translation.x, y: image3.center.y + translation.y)
        }
        if sender.state == .ended{
            UIView.animate(withDuration: 1, animations: {
                self.image3.center.x = self.image3X
                self.image3.center.y = self.image3Y
            })
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func panImage4(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let mview = sender.view{
            mview.center = CGPoint(x: image4.center.x + translation.x, y: image4.center.y + translation.y)
        }
        if sender.state == .ended{
            UIView.animate(withDuration: 1, animations: {
                self.image4.center.x = self.image4X
                self.image4.center.y = self.image4Y
            })
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    ///VIEWS
    
    override func viewWillAppear(_ animated: Bool) {
        Singleton.shared.isPressed = false
        
        image1.center.x = image1X
        image1.center.y = image1Y
        image2.center.x = image2X
        image2.center.y = image2Y
        image3.center.x = image3X
        image3.center.y = image3Y
        image4.center.x = image4X
        image4.center.y = image4Y
        image1.isUserInteractionEnabled = true
        image2.isUserInteractionEnabled = true
        image3.isUserInteractionEnabled = true
        image4.isUserInteractionEnabled = true
        let drag = UIDragInteraction(delegate: self)
        let drop = UIDropInteraction(delegate: self)
        image1.addInteraction(drag)
        image2.addInteraction(drag)
        image3.addInteraction(drag)
        image4.addInteraction(drag)
        imageDrop.addInteraction(drop)
        self.view.isUserInteractionEnabled = true
        
        delayWithSeconds(0.5) {
            UIView.animate(withDuration: 1.5, animations: {
                self.labels[0].alpha = 1
            })
        }
        delayWithSeconds(2) {
            UIView.animate(withDuration: 1.5, animations: {
                self.labels[1].alpha = 1
            })
        }
        delayWithSeconds(3.5) {
            UIView.animate(withDuration: 1.5, animations: {
                self.labels[2].alpha = 1
            })
        }
        delayWithSeconds(5) {
            UIView.animate(withDuration: 1.5, animations: {
                self.labels[3].alpha = 1
            })
        }
        delayWithSeconds(6.5) {
            UIView.animate(withDuration: 1.5, animations: {
                self.labels[4].alpha = 1
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropVX = imageDrop.center.x
        dropVY = imageDrop.center.y
        image1X = image1.center.x
        image1Y = image1.center.y
        image2X = image2.center.x
        image2Y = image2.center.y
        image3X = image3.center.x
        image3Y = image3.center.y
        image4X = image4.center.x
        image4Y = image4.center.y
    }
}
