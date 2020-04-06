//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Léa on 06/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var height: Float = 0
    var weight: Float = 0
    var bmi: Float = 0
    var bgColor: UIColor = UIColor(red:0.45, green:0.73, blue:1.00, alpha:1.00)
    var advice: String = "EAT LIKE YOU DO!"
    
    mutating func calculateBMI() {
        bmi = weight / pow(height, 2)
    }
    
    mutating func updateUI() {
        switch bmi {
        case 0 ..< 18.5 :
            bgColor = UIColor(red:0.62, green:0.83, blue:0.72, alpha:1.00)
            advice = "EAT MORE PIE!"
        case 18.5 ... 25 :
            bgColor = UIColor(red:0.45, green:0.73, blue:1.00, alpha:1.00)
            advice = "EAT LIKE YOU DO!"
        default:
            bgColor = UIColor(red:0.99, green:0.47, blue:0.66, alpha:1.00)
            advice = "EAT LESS PIE!"
        }
    }
    
}
