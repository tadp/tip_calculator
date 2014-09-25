//
//  ViewController.swift
//  tips
//
//  Created by Tad on 9/24/14.
//  Copyright (c) 2014 Tad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func onEditingChanged
            (sender: AnyObject){
                var tipPercentages = [0.18, 0.2, 0.22]
                var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
                var amount = NSString(string: billField.text)
    
                var billAmount = amount.doubleValue
                var tip = billAmount * tipPercentage
                var total = billAmount + tip
                
                totalLabel.text = "$\(tip)"
                tipLabel.text = String(format: "$%.2f", tip)
        }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

