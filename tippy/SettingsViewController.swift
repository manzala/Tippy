//
//  SettingsTipViewController.swift
//  tippy
//
//  Created by Manzala Kazmi-Shah on 12/31/17.
//  Copyright © 2017 Manzala Kazmi-Shah. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var TipSegController: UISegmentedControl!
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func saveChanges(_ sender: Any) {
        let currentIndex = Int(TipSegController.selectedSegmentIndex)
        defaults.set(currentIndex, forKey: "default_tip_index")
        defaults.set(TipSegController.titleForSegment(at: currentIndex), forKey: "default_tip_value")
        print("Index has changed to: " + String(currentIndex))
        defaults.synchronize()
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
