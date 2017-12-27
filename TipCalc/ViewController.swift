//
//  ViewController.swift
//  TipCalc
//
//  Created by Juan Bravo on 12/27/17.
//  Copyright © 2017 Juan Bravo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipEditor: UITextField!
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(tipEditor.text!) ?? 0
        let tip = bill * tipPercentages[percentControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format:"$%.2f",total)
    }
    
}

