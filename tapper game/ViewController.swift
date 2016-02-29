//
//  ViewController.swift
//  tapper game
//
//  Created by clayton  oetting on 2/28/16.
//  Copyright © 2016 clayton  oetting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var i = Int(0)
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var taps: UITextField!
    
    @IBAction func play(sender: AnyObject) {
        
        let numberTaps: Int32! = Int32(taps.text!)
       
        label.text = "\(numberTaps) taps left!"
        
    }
    
    @IBAction func buttonTap(sender: AnyObject) {
        
        let numberTaps = Int32(taps.text!)
        
        if numberTaps != nil {
        
        let tapsLeft = numberTaps! - i
        
        if tapsLeft > 0 {
            
            label.text = "\(tapsLeft) taps left!"
        
        
            i++ }
        else {
            
            taps.text = nil
            label.text = nil
            i = 0
            self.view.userInteractionEnabled = false
        }
        }
        else {
            
            label.text = "Please enter a number"
        }
        
        self.view.userInteractionEnabled = true
    
    }
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

