//
//  ViewController.swift
//  PyramidPattern
//
//  Created by Monica Mishipay on 15/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     Write a funtion that accepts a positive number N.
     The function should console log a pyramid pattern shape with N levels  using the # character. Make sure the the pyramid has spaces on both  the left and right hand side.

     Pyramid(1)
     '#'

     Pyramid(2)
     '  #  '
     '###'

     Pyramid(3)
     '    #    '
     '  # ## '
     '#####'

     Pyramid(4)
     '        #    '
     '    # ##   '
     '  #####  '
     '#######'


     */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.generateThePyramidPattern(n: 3)

       // self.generateThePyramidPatternWithRecursiveApproachWith(5)
    }

        func generateThePyramidPattern(n: Int) {

            let midPoint = Int((2*n - 1)/2)
            for i in 0...n-1 {
                var pyramidString = ""
                for j in 0..<2*n-1 {
                    if midPoint - i <= j && midPoint + i >= j {
                        pyramidString += "#"
                    } else {
                        pyramidString += "*"
                    }
                }
                print(pyramidString)
            }
        }


    func generateThePyramidPatternWithRecursiveApproachWith(_ num: Int, row: Int = 0, column: Int = 0, pyramidString: String = "") {
        let numOfColumn = 2*num - 1
        let midVal = Int((2*num - 1)/2)
        var updatedRow = row
        if row == num && column == numOfColumn {
            return
        }

        var pyramidString = pyramidString
        if column == numOfColumn {
            updatedRow += 1
            print(pyramidString)
            self.generateThePyramidPatternWithRecursiveApproachWith(num, row: updatedRow)
            return
        }

        var updatedColumn = column
        if midVal - row <= column && midVal + row >= column {
            pyramidString += "#"
        } else {
            pyramidString += "*"
        }
        updatedColumn += 1
        self.generateThePyramidPatternWithRecursiveApproachWith(num, row: row, column: updatedColumn, pyramidString: pyramidString)
    }


}

