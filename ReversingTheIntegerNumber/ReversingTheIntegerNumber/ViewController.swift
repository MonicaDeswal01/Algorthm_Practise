//
//  ViewController.swift
//  ReversingTheIntegerNumber
//
//  Created by Monica Mishipay on 12/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     Given an integer, return an integer that is the reverse ordering of numbers
        Examples
            reversseInt(15) = 51
            reverse(981) === 189
            reverse(300) === 3
            reverse(-15) === -51
            reverse(-90) === -9
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        self.reverseInt(number: -90)
        // Do any additional setup after loading the view.
    }

    func reverseInt(number: Int) {
        //Swift present
      //  let number = number.signum()
        var finalResult = 0
        if number < 0 {
            let convertedPositiveNumber = self.reverseInputVal(num: -(number))
            finalResult = -convertedPositiveNumber
        } else {
            let convertedPositiveNumber = self.reverseInputVal(num: number)
            finalResult = convertedPositiveNumber
        }
      print("the value of the final result is \(finalResult)")
    }

    func reverseInputVal(num: Int) -> Int {
        var quotientVal = num
        var remainderVal = num
        var sum = 0
        while quotientVal > 0  {
            remainderVal = quotientVal%10
            quotientVal = quotientVal/10
            sum = sum*10 + remainderVal
        }
        return sum
    }

}

