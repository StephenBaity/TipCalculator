//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Stephen Baity on 1/23/20.
//  Copyright © 2020 Stephen Baity. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet weak var defaultTipControl: UISegmentedControl!
	
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		let defaults = UserDefaults.standard
		defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "DefaultTip")
		

    }
	
	
	
	
	
	
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
