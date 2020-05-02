//
//  CoffeMachine.swift
//  CoffeeMachine
//
//  Created by Ataman on 21.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

//MARK: Coffee Machine

class CoffeMachine: NSObject {
    var coffeTank: Int
    var waterTank: Int
    var milkTank: Int
    
    override init() {
        self.coffeTank = 500
        self.waterTank = 2000
        self.milkTank = 1000
    }
    
    // MARK: fill tanks
    
    func fillWaterTank() {
        self.waterTank = 2000
    }
    func fillMilkTank() {
        self.milkTank = 1000
    }
    func fillCoffeeTank() {
        self.coffeTank = 500
    }
    
    // MARK: minus used ingredients
    
   private func useIngrediants(_ beverage: Beverage) {
        self.coffeTank = self.coffeTank - beverage.coffeeAmount
        self.waterTank = self.waterTank - beverage.waterAmount
        self.milkTank = self.milkTank - beverage.milkAmount
        
    }
    
    //MARK: check ingredients availability
    
    private func isIngrediantAvailable(_ beverage: Beverage) -> Bool {
        if self.coffeTank <= beverage.coffeeAmount {
            print("Coffe tank is empty. Fill coffe tank.")
            return false
        }
        if self.waterTank <= beverage.waterAmount {
            print("Water tank is empty. Fill water tank")
            return false
        }
        if self.milkTank <= beverage.milkAmount {
            print("Milk tank is empty. Fill milk tank")
            return false
        }
        return true
    }
    
    //MARK: make Americano
    
    func makeAmericano() -> Beverage? {
        let americano = Beverage(waterAmount: 100, coffeeAmount: 50, milkAmount: 0)
        if isIngrediantAvailable(americano) {
            useIngrediants(americano)
            let ready = MakeBeverageViewController()
            ready.beverageLabel.text = "Americano is ready"
            return americano
        } else {
            return nil
        }
    }
    
    //MARK: make Espresso
    
    func makeEspresso() -> Beverage? {
        let espresso = Beverage(waterAmount: 50, coffeeAmount: 50, milkAmount: 0)
        if isIngrediantAvailable(espresso) {
            useIngrediants(espresso)
            return espresso
        } else {
            return nil
        }
    }
    
    //MARK: make Capucino
    
    func makeCappuccino() -> Beverage? {
        let cappuccino = Beverage(waterAmount: 50, coffeeAmount: 50, milkAmount: 20)
        if isIngrediantAvailable(cappuccino) {
            useIngrediants(cappuccino)
            return cappuccino
        } else {
            return nil
        }
    }
    
}
