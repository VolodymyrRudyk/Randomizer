//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Володя Рудик on 11.05.2025.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet var minTextField: UITextField!
    @IBOutlet var maxTextField: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minTextField.text = minimumValue
        maxTextField.text = maximumValue
    }
    
    @IBAction func cancelButtonAction() {
        dismiss(animated: true)
    }
}
