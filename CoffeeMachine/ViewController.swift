//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Ataman on 21.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coffee = CoffeMachine()
        coffee.makeAmericano()
        
    }
    
    


}

