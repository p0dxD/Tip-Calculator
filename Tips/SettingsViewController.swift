//
//  SettingsViewController.swift
//  Tips
//
//  Created by Jose Rodriguez on 12/29/15.
//  Copyright © 2015 Jose Rodriguez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var test: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = "Tip Settings"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        if (segue.identifier == "testId") {
//            var svc = segue.destinationViewController as! ViewController;
//            svc.number = 1
//        }
//    }
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        let defaults = NSUserDefaults.standardUserDefaults()
//        let defaultTipIndex = defaults.integerForKey("default_tip_index")
//        tipControl.selectedSegmentIndex = defaultTipIndex
//    }
    override func viewWillDisappear(animated: Bool) {


    }
    
    @IBAction func twentyAction(sender: AnyObject)
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(1, forKey: "default_tip_index")
        defaults.synchronize()

    }

    @IBAction func eightteenAction(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(0, forKey: "default_tip_index")
        defaults.synchronize()
    }

    @IBAction func twentyTwoAction(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(2, forKey: "default_tip_index")
        defaults.synchronize()
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
