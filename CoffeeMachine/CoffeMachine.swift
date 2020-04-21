//
//  CoffeMachine.swift
//  CoffeeMachine
//
//  Created by Ataman on 21.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

class CoffeMachine: NSObject {
    var coffeTank: Int
    var waterTank: Int
    var milkTank: Int
    
   override init() {
    self.coffeTank = 500
    self.waterTank = 2000
    self.milkTank = 1000
    }
    
    func makeAmericano() -> String {
       let americano = Americano()
////        if coffeTank < americano.coffeAmount{
////         return "not enought coffe"
////        } else {}
////        else{
////            return Drink.init(americano.waterAmount)
////        }
//    }
    
}
