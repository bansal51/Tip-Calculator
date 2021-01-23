	//
//  ViewController.swift
//  Prework
//
//  Created by user189054 on 1/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //defining the different tip percentages
        let tipPercentages = [0.15, 0.18, 0.2]
        //tip = bill * tip percentage
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //total = bill + tip
        let total = bill + tip
        
        //updating the total and tip amount labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

