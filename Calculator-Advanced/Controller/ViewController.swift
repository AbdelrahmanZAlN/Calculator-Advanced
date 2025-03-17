//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber: Bool = true
    private var displayValue: Double {
        get{
            guard let num = Double(displayLabel.text!) else {fatalError("can't convert display label to double")}
            return num
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        if let calcMethod = sender.currentTitle {
            
            let calculator = CalculatorLogic(number: displayValue)
            guard let result = calculator.calculate(symbol: calcMethod) else {fatalError("can't convert display label to double")}
            displayValue = result
        }
        //What should happen when a non-number button is pressed
    
    }

    
      func numButtonPressed(_ sender: UIButton) {
        
        if let numPressed = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numPressed
                isFinishedTypingNumber = false
            } else {
                if sender.currentTitle == "."{
                    
                    let isInt = floor(displayValue) == displayValue
                    if !isInt{
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numPressed
            }
        }
        //What should happen when a number is entered into the keypad
    
    }

}

