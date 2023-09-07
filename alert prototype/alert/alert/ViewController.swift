//
//  ViewController.swift
//  alert
//
//  Created by Natalie Stroud on 8/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Alert!",
            message: "You have just activated the alert dialog. Please select Dismiss or Go back to return to the Alert screen.",
            preferredStyle: .alert)

        let action = UIAlertAction(
            title: "Dismiss",
            style: .default,
            handler: nil)
        
        let dismiss = UIAlertAction(
            title: "Go back",
            style: .default,
            handler: nil)

        alert.addAction(action)
        alert.addAction(dismiss) // Add the dismiss action to the alert
        
        present(alert, animated: true, completion: nil)
        
        UIAccessibility.post(notification: .layoutChanged, argument: alertButton)
    }
    
    override func accessibilityPerformEscape() -> Bool {
        // Return true if you've handled the escape action
        // For example, you might dismiss a modal view controller
        if presentingViewController != nil {
            dismiss(animated: true, completion: nil)
            return true
        }
        return false
    }
}


