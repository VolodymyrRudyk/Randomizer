//
//  ViewController.swift
//  Randomizer
//
//  Created by Володя Рудик on 11.05.2025.
//

import UIKit

final class MainViewController: UIViewController {
    @IBOutlet var getRandomNumberButton: UIButton!
    @IBOutlet var randomValueNumber: UILabel!
    @IBOutlet var maximumValueNumber: UILabel!
    @IBOutlet var minimumValueNumber: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad() 
        getRandomNumberButton.layer.cornerRadius = 10
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        settingsVC?.minimumValue = minimumValueNumber.text
        settingsVC?.maximumValue = maximumValueNumber.text
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueNumber.text ?? "0") ?? 0
        let maximumNumber = Int(maximumValueNumber.text ?? "0") ?? 100
        
        randomValueNumber.text = Int
            .random(in: minimumNumber...maximumNumber)
            .formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let settingVC = segue.source as? SettingsViewController
        minimumValueNumber.text = settingVC?.minTextField.text
        maximumValueNumber.text = settingVC?.maxTextField.text
    }
}

