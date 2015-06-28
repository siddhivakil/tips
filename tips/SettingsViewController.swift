//
//  SettingsViewController.swift
//  tips
//
//  Created by Vakil, Siddhi on 6/27/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editDefaultPerecentage(sender: AnyObject) {
        
        
        var deafultTipPer = defaultTipsSettings.selectedSegmentIndex;
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(deafultTipPer._bridgeToObjectiveC().integerValue, forKey: "defaultTip")
        defaults.synchronize()
        var defaultTipPers = defaults.integerForKey("defaultTip");
        println(defaultTipPers);
        
        

    }

    @IBOutlet weak var defaultTipsSettings: UISegmentedControl!
    
    
    
   
    
    
}
