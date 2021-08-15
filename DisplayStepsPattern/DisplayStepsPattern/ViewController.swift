//
//  ViewController.swift
//  DisplayStepsPattern
//
//  Created by Monica Mishipay on 15/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     Write a function that accepts a positive number N.
     The function should console log a step shape
     With N levels using  the # characcter. Make sure that steps has space on the right hand side
     Example
     Steps(2)
     '#  '
     '##'
     Steps(3)
     '#   '
     '##  '
     '###'
     Steps(4)
     '#     '
     '##   '
     '###  '
     '####'


     */

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.createPatternWith(val: 5)
        // Do any additional setup after loading the view.

        self.recursivePrintPatter(val: 3)

    }

    func createPatternWith(val: Int) {
        for row in 1...val {

            for col in 1...val {
                if col <= row {
                    print("#", terminator:"")
                } else {
                    print(".", terminator:"")
                }
            }
            print()
        }
    }

    func recursivePrintPatter(val: Int, numberOfRow: Int = 0, stairs: String = "") {
        if val == numberOfRow {
            return
        }

        if val == stairs.count {
            print(stairs)
            let updatedRow = numberOfRow + 1
            return recursivePrintPatter(val: val, numberOfRow: updatedRow)
        }

        var newUpdatedString = stairs
        if stairs.count <= numberOfRow {
            newUpdatedString += "#"
        } else {
            newUpdatedString += "."
        }

        return recursivePrintPatter(val: val, numberOfRow: numberOfRow, stairs: newUpdatedString)
    }


}

