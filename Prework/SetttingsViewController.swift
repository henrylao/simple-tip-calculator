//
//  SetttingsViewController.swift
//  Prework
//
//  Created by Henry Lao on 1/3/21.
//

import UIKit

class SetttingsViewController: UIViewController {

    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onToggleDarkMode(_ sender: Any) {
        print("Toggled dark mode switch")
        print("Dark Mode On:", darkModeSwitch.isOn)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
