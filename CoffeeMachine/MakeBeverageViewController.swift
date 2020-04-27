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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeAmericanoButton(_ sender: Any) {
        americano.makeAmericano()
    }
    
    @IBAction func makeCappuccinoButton(_ sender: Any) {
        cappuccino.makeCappuccino()
    }
    
    @IBAction func makeEspressonButton(_ sender: Any) {
        espresso.makeEspresso()
        print("\(espresso) is ready")
    }
    
}
