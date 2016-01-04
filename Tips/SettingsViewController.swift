//
//  SettingsViewController.swift
//  Tips
//
//  Created by Jose Rodriguez on 12/29/15.
//  Copyright © 2015 Jose Rodriguez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Settings"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipIndex = tipControl.selectedSegmentIndex
        defaults.setInteger(defaultTipIndex, forKey: "default_tip_index")
        defaults.synchronize()
        print("selected tip at index \(tipControl.selectedSegmentIndex)")
    }
    
    @IBAction func twentyAction(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        print("test")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
