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
    
    override func viewDidLoad() {
        super.viewDidLoad()
          billField.becomeFirstResponder()
     
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
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
    @IBAction func splitSegmentTap(_ sender: Any) {
      
        self.splitLabel.transform = CGAffineTransform(scaleX: 1.0, y: 2.0)
        
        UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            self.splitLabel.transform = .identity
        }, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        let index = tipController.selectedSegmentIndex
       switch index {
       case 0: view.backgroundColor = UIColor.orange
       case 1: view.backgroundColor = UIColor.purple
       case 2: view.backgroundColor = UIColor.red
       default:
        break
        }
    }
    @IBAction func splitChangeColor(_ sender: Any) {
        let index = splitController.selectedSegmentIndex
        switch index {
        case 0: self.view.backgroundColor = UIColor.orange
        case 1: view.backgroundColor = UIColor.purple
        case 2: view.backgroundColor = UIColor.red
        case 3: view.backgroundColor = UIColor.blue
        default:
            break
        }
    }
    
    @IBAction func segmentTap(_ sender: Any) {
        self.totalLabel.transform = CGAffineTransform(scaleX: 1.0, y: 2.0)
        
        UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            self.totalLabel.transform = .identity
        }, completion: nil)
    }
    
}

