//
//  Singleton.swift
//  FinalTry
//
//  Created by Pasquale Bruno on 19/12/2017.
//  Copyright © 2017 Pasquale Bruno. All rights reserved.
//

import Foundation

class Singleton{
    static let shared = Singleton()
    var change = false
    var isPressed = false
}
