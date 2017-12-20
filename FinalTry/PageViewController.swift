//
//  PageViewController.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var previousIndex = 0
        guard let currentIndex = viewControllerList.index(of: viewController) else { return nil}
        if currentIndex == 0 {
            return nil
        } else if currentIndex == 1 {
            previousIndex = 0
            return viewControllerList[previousIndex]
        }
        previousIndex = currentIndex - 2
        guard previousIndex >= 0 else {return nil}
        guard viewControllerList.count > previousIndex else {return nil}
        
        return viewControllerList[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if Singleton.shared.isPressed == true {
            if viewControllerList.index(of: viewController) == 0 {
                if Singleton.shared.change == true {
                    guard let currentIndex = viewControllerList.index(of: viewController) else { return nil }
                    let nextIndex = currentIndex + 1
                    guard viewControllerList.count != 0 else { return nil }
                    guard viewControllerList.count > nextIndex else { return nil }
                    
                    return viewControllerList[nextIndex]
                } else {
                    guard let currentIndex = viewControllerList.index(of: viewController) else { return nil }
                    let nextIndex = currentIndex + 2
                    guard viewControllerList.count != 0 else { return nil }
                    guard viewControllerList.count > nextIndex else { return nil }
                    
                    return viewControllerList[nextIndex]
                }
            } else {
                guard let currentIndex = viewControllerList.index(of: viewController) else { return nil }
                let nextIndex = currentIndex + 2
                guard viewControllerList.count != 0 else { return nil }
                guard viewControllerList.count > nextIndex else { return nil }
                
                return viewControllerList[nextIndex]
            }
        } else { return nil }
    }
    
    lazy var viewControllerList: [UIViewController] = {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc1 = storyboard.instantiateViewController(withIdentifier: "ch1")
            let vc2 = storyboard.instantiateViewController(withIdentifier: "ch1_2")
            let vc3 = storyboard.instantiateViewController(withIdentifier: "ch1_3")
            let vc4 = storyboard.instantiateViewController(withIdentifier: "ch2_2")
            return [vc1, vc2, vc3, vc4]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.setViewControllers([viewControllerList.first!], direction: .forward, animated: true, completion: nil)
    }
    
    

}
