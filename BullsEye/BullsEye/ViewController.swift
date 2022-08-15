//
//  ViewController.swift
//  BullsEye
//
//  Created by Максим Капанжи on 24.07.2022.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    var targetValue: Int = 0
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(slider.value)
        startNewRound()
        updateLabel()
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider now: \(currentValue)" +
            "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 0 ... 100)
        currentValue = 50
        slider.value = Float(currentValue)
        targetLabel.text = String(targetValue)
    }
    
    func updateLabel() {
        targetLabel.text = String(targetValue)
    }
}
