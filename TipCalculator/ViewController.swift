//
//  ViewController.swift
//  TipCalculator
//
//  Created by Stephen Baity on 1/19/20.
//  Copyright © 2020 Stephen Baity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var billField: UITextField!
	@IBOutlet weak var tipLabel: UITextField!
	@IBOutlet weak var totalLabel: UITextField!
	@IBOutlet weak var tipControl: UISegmentedControl!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func onTap(_ sender: Any) {
		print("Dismissing the keyboard")
		view.endEditing(true)
	}
	
	@IBAction func calculateTip(_ sender: Any) {
		// Get the bill amount
		let bill = Double(billField.text!) ?? 0
		
		// Calculate the tip and total
		let tipPercentages = [0.15, 0.18, 0.2]
		
		let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
		let total = bill + tip
		
		// Update the tip and total labels
		tipLabel.text = String(format: "$%.2f", tip)
		totalLabel.text = String(format: "%.2f", total)
	}
}

