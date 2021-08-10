//
//  ViewController.swift
//  StangeGridAgain
//
//  Created by Monica Mishipay on 10/08/21.
//

import UIKit

class ViewController: UIViewController {

    /**


     A strange grid has been recovered from an old book. It has  columns and infinite number of rows. The bottom row is considered as the first row. First few rows of the grid are like this:
     ..............

     ..............

     20 22 24 26 28

     11 13 15 17 19

     10 12 14 16 18

      1  3  5  7  9

      0  2  4  6  8
     The grid grows upwards forever!
     Your task is to find the integer in th column in th row of the grid.
     Input Format
     There will be two integers r and c separated by a single space.
     Constraints


     Rows are indexed from bottom to top and columns are indexed from left to right.
     Output Format
     Output the answer in a single line.
     Sample Input
     6 3
     Sample Output
     25
     Explanation
     The number in the 6th row and 3rd column is 25.


     */

    override func viewDidLoad() {
        super.viewDidLoad()



        print("the value at particular index is \(self.findTheValuefor(r: 6, c: 3))")

//        print("the value at particular index by not creating the array is \(self.findTheValueByNotCreatingArrayfor(r: 6, c: 3))")
    }

    func findTheValuefor( r: Int, c: Int) -> Int {
        var array = "\n"



        var indexVal = 0
        var i: Float = 0.0
        let rowFloat = Float(r/2)
        while i <= rowFloat {
        var value = Int(i) * 10 + (indexVal%2 == 0 ? 0 : 1)

            for j in 0...c {

                let addValue = j == 0 ? 0 : 2
                value = value + addValue
                array.append("\(value) ")

                if indexVal == r-1 , j == c-1 {
                    return Int(value)
                }
            }
            array.append("\n")
            print("array sequence now \(array)")
            i += 0.5
            indexVal += 1
        }


        /**
        for i in 1...rowVal  {
            var value = (i-1) * 10
            var array2 = ""
            for j in 0...column {

                let addValue = j == 0 ? 0 : 2
                value = value + addValue
                array.append("\(value) ")
                array2.append("\(value + 1) ")

                if i == rowVal, j == column-1 {
                    print("the value of row is \(i)")
                    print("the value of column is \(j)")
                    print("array sequence is \(array)\n\(array2)")
                    return i % 2 == 0 ? value : value + 1
                }
            }
            array.append("\n")
            array.append(array2)
            array.append("\n")

        }
**/
        return 0
    }


    func finalWorkingSoltion( r: Int, c: Int) -> Int {
        var indexVal = 0
        var i: Float = 0.0
        let rowFloat = Float(r/2)
        while i <= rowFloat {
        var value = Int(i) * 10 + (indexVal%2 == 0 ? 0 : 1)

            for j in 0...c {

                let addValue = j == 0 ? 0 : 2
                value = value + addValue

                if indexVal == r-1 , j == c-1 {
                    return Int(value)
                }
            }
            i += 0.5
            indexVal += 1
        }
        return 0
    }


    func findTheValueByNotCreatingArrayfor( r: Int, c: Int) -> Int {
        let rowVal = r/2
        for i in 1...rowVal  {
            var value = (i-1) * 10
            for j in 0...c {

                let addValue = j == 0 ? 0 : 2
                value = value + addValue

                if i == rowVal, j == c-1 {
                    return i % 2 == 0 ? value : value + 1
                }
            }
        }

        return 0
    }
}

