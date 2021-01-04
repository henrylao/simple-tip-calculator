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
    
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var partySizeStepper: UIStepper!
    @IBOutlet weak var partySizeLabel: UILabel!


    @IBOutlet weak var tipSplitLabel: UILabel!
    

    @IBAction func resetAllFields(_ sender: Any) {
        resetPartySize(sender);
        billField.text = String(format: "%.2f", 0.00)
        let bill = Double(0)
        let tip = Double(0)
        let total = bill + tip
        let partySize = Double(partySizeLabel.text!) ?? 0
        let tipSplit: Double = tip  / partySize

        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
//        totalLabel.text = "$\(total)"
        tipSplitLabel.text = String(format: "$%.2f", tipSplit)
        
    }
    
    
    
    @IBAction func resetPartySize(_ sender: Any) {
        print("Reset clicked")
        partySizeStepper.value = 1
        partySizeLabel.text = String(Int(partySizeStepper.value))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true);
        
        // Set title in the navigation bar
        self.title = "Tip Calculator"
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amt
        let bill = Double(billField.text!) ?? 0
        // calc tip & total
        let tipPercentages = [0.15, 0.18, 0.2]
    
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let partySize = Double(partySizeLabel.text!) ?? 0
        let tipSplit: Double = tip  / partySize

        // update tip & total labels
//        tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
//        totalLabel.text = "$\(total)"
        tipSplitLabel.text = String(format: "$%.2f", tipSplit)
    }
    
    @IBAction func partySizeChanged(_ sender: UIStepper) {
        print("Stepper clicked")
        print(sender.value)
        partySizeLabel.text = String(Int(sender.value))
        calculateTip(sender)
    }
    
    
}

