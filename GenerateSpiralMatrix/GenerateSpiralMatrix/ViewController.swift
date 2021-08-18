//
//  ViewController.swift
//  GenerateSpiralMatrix
//
//  Created by Monica Mishipay on 15/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     Write a function that accepts an integer N and returns a NxN spiral matrix

     Exapmple
     // [[undefined, undefined],
     [undefined, undefined]]

     matrix(3)
     [[1, 2, 3],
     [8, 9, 4],
     [7, 6, 5]]

     matrix(4)
     [[1, 2, 3, 4],
     [12, 13, 14, 5],
     [11, 16, 15, 6],
     [10, 9, 8, 7]]
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        var arr = Array(repeating: Array(repeating: 0, count: 2), count: 3)
        let myVar = 18
        arr[0][0] = myVar
        print(arr)
      //  self.generateTheSpiralMatrix(3)

    }

    func generateTheSpiralMatrix(_ val: Int) {

        var spiralSubArrays = Array(repeating: Array(repeating: 0, count: 5), count: 5)


        var startRow = 0
        var endRow = val
        var startColumn = 0
        var endColumn = val
        var startVal = 0

        for row in startRow..<endRow {
            var rowArray = [Int]()
            for col in startColumn..<endColumn {
                if row == 0 {
                    startVal += 1
                    spiralSubArrays[row][col] += startVal

                }

                if col == val-1 {
                    startColumn = val-1
                    endColumn = val - 1
                    startVal += 1
                    spiralSubArrays[row][col] += startVal
                }

                if row == val-1 {
                    startColumn = 0
                    endColumn = val-2
                    startVal += 1
                    spiralSubArrays[row][col] += startVal

                }




            }
        }

        print(spiralSubArrays)
    }


}

