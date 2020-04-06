//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Léa on 06/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bgColor: UIColor?
    var advice: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = bgColor

    }
    
    @IBAction func RecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}
