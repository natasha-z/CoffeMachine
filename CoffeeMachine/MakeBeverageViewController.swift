//
//  MakeBeverageViewController.swift
//  CoffeeMachine
//
//  Created by Ataman on 26.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

class MakeBeverageViewController: UIViewController {
    let americano = CoffeMachine()
    let cappuccino = CoffeMachine()
    let espresso = CoffeMachine()
    
    @IBOutlet weak var beverageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeAmericanoButton(_ sender: Any) {
        beverageLabel.text = americano.makeAmericano()
    }
    
    @IBAction func makeCappuccinoButton(_ sender: Any) {
        beverageLabel.text = cappuccino.makeCappuccino()
    }
    
    @IBAction func makeEspressonButton(_ sender: Any) {
        beverageLabel.text = espresso.makeEspresso()
    }
    
}
