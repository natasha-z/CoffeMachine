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
    
    func fillWaterTank() -> String {
        self.waterTank = 2000
        return "Water Tank Full"
    }
    func fillMilkTank() -> String {
        self.milkTank = 1000
        return "Milk Tank Full"
    }
    func fillCoffeeTank() -> String {
        self.coffeTank = 500
        return "Coffee Tank Full"
    }
    
    // MARK: minus used ingredients
    
   private func useIngrediants(_ beverage: Beverage) {
        self.coffeTank = self.coffeTank - beverage.coffeeAmount
        self.waterTank = self.waterTank - beverage.waterAmount
        self.milkTank = self.milkTank - beverage.milkAmount
    }
    
    //MARK: check ingredients availability
    
    private func isIngrediantAvailable(_ beverage: Beverage) -> String? {
        if self.coffeTank <= beverage.coffeeAmount {
            return "Coffee tank is empty. Fill coffe tank."
        }
        if self.waterTank <= beverage.waterAmount {
            return "Water tank is empty. Fill water tank"
        }
        if self.milkTank <= beverage.milkAmount {
            return "Milk tank is empty. Fill milk tank"
        }
        return nil
    }
    
    //MARK: make Americano
    
    func makeAmericano() -> String? {
        let americano = Beverage(waterAmount: 100, coffeeAmount: 50, milkAmount: 0)
        let ingredientsAvailability = isIngrediantAvailable(americano)
        if ingredientsAvailability == nil {
            useIngrediants(americano)
            return "Americano is ready"
        } else {
            return ingredientsAvailability
        }
    }
    
    //MARK: make Espresso
    
    func makeEspresso() -> String? {
        let espresso = Beverage(waterAmount: 50, coffeeAmount: 50, milkAmount: 0)
        let ingredientsAvailability = isIngrediantAvailable(espresso)
        if ingredientsAvailability == nil {
            useIngrediants(espresso)
            return "Espresso is ready"
        } else {
            return ingredientsAvailability
        }
    }
    
    //MARK: make Capucino
    
    func makeCappuccino() -> String? {
        let cappuccino = Beverage(waterAmount: 50, coffeeAmount: 50, milkAmount: 20)
        let ingredientsAvailability = isIngrediantAvailable(cappuccino)
        if ingredientsAvailability == nil {
            useIngrediants(cappuccino)
            return "Cappuccino is ready"
        } else {
            return ingredientsAvailability
        }
    }
    
}
