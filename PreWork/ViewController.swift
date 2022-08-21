//
//  ViewController.swift
//  PreWork
//
//  Created by Simar Cheema on 8/11/22.
//

import UIKit

class ViewController: UIViewController {

    var tipPercent = 0.15
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    @IBAction func settingsButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "settings") as! SettingsViewController
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
//        vc.completionHandler = { text in
//            self.tipControl.setTitle(text, forSegmentAt: 0)
//        }
        present(vc, animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let newController = segue.destination
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get Total tip by multiplying tip * tippercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        let tip = bill * tipPercent
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

