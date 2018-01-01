//
//  SettingsTipViewController.swift
//  tippy
//
//  Created by Manzala Kazmi-Shah on 12/31/17.
//  Copyright © 2017 Manzala Kazmi-Shah. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    // let defaults = UserDefaults.standard
     var tipPercentageIndex:Int!
    @IBOutlet weak var settingsTipController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // defaults.synchronize()
       // settingsTipController.selectedSegmentIndex = defaults.integer(forKey: "default_tip_index")
       
        // Do any additional setup after loading the view.
    }
  
   
    @IBAction func Index(_ sender: Any) {
      tipPercentageIndex = settingsTipController.selectedSegmentIndex
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        tipPercentageIndex = settingsTipController.selectedSegmentIndex
//        defaults.set(tipPercentageIndex, forKey: "default_tip_index")
//        defaults.synchronize()
        self.performSegue(withIdentifier: "Tippy", sender: self)
    }
    
    @IBAction func Back(_ sender: Any) {
       self.performSegue(withIdentifier: "Tippy", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
