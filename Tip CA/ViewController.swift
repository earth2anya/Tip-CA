//
//  ViewController.swift
//  Tip CA
//
//  Created by StreetCode Academy on 7/19/17.
//  Copyright © 2017 StreetCode Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tiplab: UILabel!
    @IBOutlet weak var tipcon: UISegmentedControl!
    @IBOutlet weak var billyTextField: UITextField!
    @IBOutlet weak var totalab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    
    }
    @IBAction func cali(_ sender:
        AnyObject) {
        let tiper = [0.15, 0.2, 0.25]
        let billy = Double(billyTextField.text!) ?? 0
        let tip = billy * tiper[tipcon.selectedSegmentIndex]
        let total = billy + tip
        
        tiplab.text = String(format: "$%.2f", tip)
        totalab.text = String(format: "$%.2f", total)
    }
    
    }


