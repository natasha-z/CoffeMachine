//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Ataman on 21.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

class FillTanksViewController: UIViewController {
var coffeMachine = CoffeMachine()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fillWaterTankButton(_ sender: Any) {
        coffeMachine.fillWaterTank()
        
    }
    
    @IBAction func fillMilkTankButton(_ sender: Any) {
        coffeMachine.fillMilkTank()
    }
    
    @IBAction func fillCoffeTankButton(_ sender: Any) {
        coffeMachine.fillCoffeeTank()
    }
    

}

