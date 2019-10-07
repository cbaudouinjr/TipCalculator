//
//  ViewController.swift
//  TipCalculator
//
//  Created by Christopher Baudouin, Jr. on 9/29/19.
//  Copyright © 2019 Christopher Baudouin, Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UITextField!
    let tipPercentages = [0.1, 0.15, 0.20]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onBillEdit(_ sender: Any) {
        let subtotal = Double(billTotalLabel.text!) ?? 0
        let tipAmount = subtotal * tipPercentages[tipControl.selectedSegmentIndex]
        let grandTotal = subtotal + tipAmount
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", grandTotal)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}
