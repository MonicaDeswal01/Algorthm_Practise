//
//  ViewController.swift
//  GenerateSubarrays
//
//  Created by Monica Mishipay on 12/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
      Given an array and chunk size , divide an array into many  subarrays where each subarray is of lenth size
        chunk([1,2,3,4], 2) ---->  [[1,2], [3,4]]
        chunk ([1,2,3,4,5], 2) -----> [[1,2,], [3,4], [5]]
        chunk([1,2,3,4,5,6,7,8], 3) ----> [[1,2,3], [4,5,6], [7,8]]
        chunk([1,2,3,4,5],4) ----> [[1,2,3,4], [5]]
        chunk([1,2,3,4,5],10) -----> [[1,2,3,4,5]]
     */

    override func viewDidLoad() {

        super.viewDidLoad()

        self.generateTheSubArrayChunk(array: [1,2,3,4,5], chunkSize: 10)




        // Do any additional setup after loading the view.
    }

    func generateTheSubArrayChunk(array: [Int], chunkSize: Int) {
        var bigArray = [[Int]]()
        var subArray = [Int]()

        for (index,value) in array.enumerated() {
            subArray.append(value)
            if (subArray.count == chunkSize) || (index == array.count-1) {
                bigArray.append(subArray)
                subArray.removeAll()
            }
        }

        print("the generated array is \(bigArray)")
    }


}

