//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Léa on 05/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        calculatorBrain.height = sender.value/100
        let heightString = String(format: "%.2f", calculatorBrain.height)
        heightLabel.text = "\(heightString) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        calculatorBrain.weight = sender.value
        let weightString = String(format: "%.0f", calculatorBrain.weight)
        weightLabel.text = "\(weightString) kg"
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI()
        calculatorBrain.updateUI()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", calculatorBrain.bmi)
            destinationVC.advice = calculatorBrain.advice
            destinationVC.bgColor = calculatorBrain.bgColor
        }

    }
    
}

