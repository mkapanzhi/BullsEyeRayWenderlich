//
//  ViewController.swift
//  BullsEye
//
//  Created by Максим Капанжи on 24.07.2022.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(slider.value)
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider now: \(currentValue)"
        
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(slider.value)
    }
}
