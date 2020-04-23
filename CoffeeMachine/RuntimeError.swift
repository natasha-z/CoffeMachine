//
//  RuntimeError.swift
//  CoffeeMachine
//
//  Created by Ataman on 24.04.2020.
//  Copyright © 2020 Ataman. All rights reserved.
//

import UIKit

struct RuntimeError: Error {
    
    let message: String

        init(_ message: String) {
            self.message = message
        }
        public var localizedDescription: String {
            return message
        }
}
