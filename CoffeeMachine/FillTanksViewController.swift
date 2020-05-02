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

@IBOutlet weak var tankLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fillWaterTankButton(_ sender: Any) {
        tankLabel.text = coffeMachine.fillWaterTank()
    }
    
    @IBAction func fillMilkTankButton(_ sender: Any) {
        tankLabel.text = coffeMachine.fillMilkTank()
        
    }
    
    @IBAction func fillCoffeTankButton(_ sender: Any) {
        tankLabel.text = coffeMachine.fillCoffeeTank()
    }
    

}

