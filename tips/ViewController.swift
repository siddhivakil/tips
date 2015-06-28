//
//  ViewController.swift
//  tips
//
//  Created by Vakil, Siddhi on 6/21/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var billField: UITextField!
    

    @IBOutlet weak var totalLabel: UILabel!
    
    
    var defaults = NSUserDefaults.standardUserDefaults();
   
   
    
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true);
       
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
       var defaultTipPer = defaults.integerForKey("defaultTip");
       tipSegmentControl.selectedSegmentIndex = defaultTipPer;
    }
    @IBOutlet weak var tipSegmentControl: UISegmentedControl!
    
    @IBAction func onEditingChanged(sender: UITextField) {
        
        //var defaultTipPer = defaults.integerForKey("defaultTip");
        //tipSegmentControl.selectedSegmentIndex = defaultTipPer;
        var tipPercentages = [0.15,0.20,0.30];
        var tipper = tipPercentages[tipSegmentControl.selectedSegmentIndex];
        var billAmount=billField.text._bridgeToObjectiveC().doubleValue;
        var tip=billAmount * tipper;
        var total = billAmount+tip;
        
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text="$\(total)"
        
        tipLabel.text = String(format: "%.2f",tip);
        totalLabel.text = String(format: "%.2f",total);
        
    }
    
    
    @IBAction func onValueChanged(sender: AnyObject) {
        
        onEditingChanged(billField);
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text="$0.00";
        totalLabel.text="$0.00";
       
    
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

