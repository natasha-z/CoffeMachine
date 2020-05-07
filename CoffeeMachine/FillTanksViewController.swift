//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Ataman on 21.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

class FillTanksViewController: UIViewController {

@IBOutlet weak var tankLabel: UILabel!
    weak var makeBevVC: MakeBeverageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Service"
    }
    
    @IBAction func fillWaterTankButton(_ sender: Any) {
        tankLabel.text = makeBevVC.coffeeMachine.fillWaterTank()
    }
    
    @IBAction func fillMilkTankButton(_ sender: Any) {
        tankLabel.text = makeBevVC.coffeeMachine.fillMilkTank()
    }
    
    @IBAction func fillCoffeTankButton(_ sender: Any) {
        tankLabel.text = makeBevVC.coffeeMachine.fillCoffeeTank()
    }
}

