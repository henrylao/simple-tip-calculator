//
//  ViewController.swift
//  Prework
//
//  Created by Henry Lao on 1/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true);
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amt
        let bill = Double(billField.text!) ?? 0
        // calc tip & total
        let tipPercentages = [0.15, 0.18, 0.2]
    
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip & total labels
//        tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
//        totalLabel.text = "$\(total)"
    }
    
    
}

