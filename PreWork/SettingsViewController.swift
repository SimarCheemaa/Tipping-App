//
//  SettingsViewController.swift
//  PreWork
//
//  Created by Simar Cheema on 8/20/22.
//

import UIKit

class SettingsViewController: UIViewController {

    
    public var completionHandler: ((String?) -> Void)?
    
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var amount1: UITextField!
    @IBOutlet weak var amount2: UITextField!
    @IBOutlet weak var amount3: UITextField!
    
    @IBOutlet weak var tip2: UILabel!
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var tip3: UILabel!
    @IBOutlet weak var backButton: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func goBack(_ sender: Any) {
        completionHandler?(amount1.text)
        dismiss(animated: true, completion: nil)
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
