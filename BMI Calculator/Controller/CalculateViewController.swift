//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Léa on 05/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var height: Float = 0
    var weight: Float = 0
    var bmiValue: String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        height = sender.value/100
        let heightString = String(format: "%.2f", height)
        heightLabel.text = "\(heightString) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight = sender.value
        let weightString = String(format: "%.0f", weight)
        weightLabel.text = "\(weightString) kg"
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        let myBMI: Float = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", myBMI)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }

    }
    
}

