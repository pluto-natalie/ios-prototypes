//
//  ViewController.swift
//  buttons
//
//  Created by Natalie Stroud on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var normalButton: UIButton! // built in Interface Builder
    @IBOutlet weak var selectedButton: UIButton!
    @IBOutlet weak var disabledButton: UIButton!
    @IBOutlet weak var toggleButton: UIButton!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
            
//        disabled button
        disabledButton.isEnabled = false
        disabledButton.backgroundColor = UIColor.white // Change to an appropriate color
        disabledButton.setTitleColor(UIColor.black, for: .normal) // Change to an appropriate color
            
        
            updateAccessibilityProperties()
        
        }
    
    func updateAccessibilityProperties() {
        if selectedButton.isSelected {
            // Set accessibility label, and traits for selected state
            selectedButton.accessibilityLabel = "Category selected"
            selectedButton.accessibilityTraits.insert(.selected)
        } else {
            // Set accessibility label, and traits for deselected state
            selectedButton.accessibilityLabel = "Category deselected"
            selectedButton.accessibilityTraits.remove(.selected)
        }
    }
    
    @IBAction func selectedButtonTapped(_ sender: UIButton) {
        // Handle the action for the selectedButton
        // Toggle the selected state
        sender.isSelected = !sender.isSelected
        
        // Update accessibility properties based on the new state
        updateAccessibilityProperties()
    }

    @IBAction func toggleButtonTapped(_ sender: UIButton) {
        // Handle the action for the toggleButton
        if sender.titleLabel?.text == "Off" {
            sender.setTitle("On", for: .normal)
        } else {
            sender.setTitle("Off", for: .normal)
        }
    }


    }
