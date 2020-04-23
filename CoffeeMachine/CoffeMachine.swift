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
    
    func fillWaterTank() {
        
    }
    
    func makeAmericano() -> Beverage {
        let americano = Beverage(waterAmount: 50, coffeeAmount: 50, milkAmount: 0)
        waterTank = waterTank - americano.waterAmount
        if coffeTank < americano.coffeeAmount {
            print("Add more coffee")
            throw RuntimeError("Error message.")
        }
        if waterTank < americano.waterAmount {
            print("Add more water")
        }
        return americano
    }
    
  }
