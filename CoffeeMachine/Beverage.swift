//
//  Americano.swift
//  CoffeeMachine
//
//  Created by Ataman on 21.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

struct Beverage: Comparable {
    static func < (lhs: Beverage, rhs: Beverage) -> Bool {
        true
    }
    
    var waterAmount: Int
    var coffeeAmount: Int
    var milkAmount: Int
}


