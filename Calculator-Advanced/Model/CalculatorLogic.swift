//
//  CalculatorLogic.swift
//  Calculator-Advanced
//
//  Created by Abdelrahman Zain on 17/03/2025.
//

import Foundation
class CalculatorLogic {
    var number : Double
    init (number : Double ){
        self.number = number
    }
    
    func calculate (symbol calcMethod  : String) -> Double?{
        if calcMethod == "+/-" {
            number *= -1
            return number
        }
        else if calcMethod == "AC" {
            number = 0
            return number
        }
        else if calcMethod == "%" {
            number /= 100
            return number
        }
        return nil
    }
}
