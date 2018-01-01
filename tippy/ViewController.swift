//
//  ViewController.swift
//  tippy
//
//  Created by Manzala Kazmi-Shah on 12/27/17.
//  Copyright © 2017 Manzala Kazmi-Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var splitController: UISegmentedControl!
    @IBOutlet weak var splitLabel: UILabel!
   // let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  defaults.synchronize()
        billField.becomeFirstResponder()
      //  tipController.selectedSegmentIndex = defaults.integer(forKey: "default_tip_index")
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//    @IBAction func toSettings(_ sender: Any) {
//        self.performSegue(withIdentifier: "toSettings", sender: self)
//    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        let splitNumbers = [1,2,3,4]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", total/Double((splitNumbers[splitController.selectedSegmentIndex])))
        
    }
    
}

