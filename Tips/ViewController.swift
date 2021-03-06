//
//  ViewController.swift
//  Tips
//
//  Created by Jose Rodriguez on 12/29/15.
//  Copyright © 2015 Jose Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amountText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //title
        self.title = "Tip Calculator"
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
//        tipControl.selectedSegmentIndex = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)

        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipIndex = tipControl.selectedSegmentIndex
        defaults.setInteger(defaultTipIndex, forKey: "default_tip_index")
        defaults.synchronize()
        print("selected tip at index \(tipControl.selectedSegmentIndex)")

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipIndex = defaults.integerForKey("default_tip_index")
        tipControl.selectedSegmentIndex = defaultTipIndex
        
        loadValues(tipControl.selectedSegmentIndex)
        
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        loadValues(tipControl.selectedSegmentIndex)
        
    }
    
    
    func loadValues(value: Int){
        var tipAmounts = [0.18, 0.2, 0.22]
        var tipAmount = tipAmounts[value]
        
        var billAmount = NSString(string: amountText.text!).doubleValue
        var tip = billAmount*tipAmount
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
//    
    func setTipControlll(value: Int){
        tipControl.selectedSegmentIndex = value
    }
    
    func getTipControlll() -> UISegmentedControl{
        return tipControl
    }
    

    
}

