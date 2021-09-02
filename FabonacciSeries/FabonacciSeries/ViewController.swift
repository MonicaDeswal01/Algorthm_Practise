//
//  ViewController.swift
//  FabonacciSeries
//
//  Created by Monica Mishipay on 18/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
        Print out the n-th entry in the fibonacci series. The fabonacci series is an ordering of numbers where each number is the sum of  the preceeding tow.
           for example, the sequence:
              [0,1,1,2,3,5,8,13,21,34]
           from the first ten entries of the fabonacci series

               Example
               fib(4) = 3
               fib(7) = 13
     */

    override func viewDidLoad() {
        super.viewDidLoad()
     //   self.findTheValFromFabonacciAt(index: 7)
        // Do any additional setup after loading the view.


        self.findTheValFromFabonacciWithRecursionAt(index: 4, sum: 1, currentIndex: 4)

    }


    func findTheValFromFabonacciAt(index: Int) {
        var previous = 0
        var sum = 1
        var array = [0,1]

        for _ in 0..<index-2 {

           sum = sum + previous
           previous = sum - previous
           array.append(sum)
            print("the value of previous \(previous)")
            print("the value of sum \(sum)")

        }
        print("the fabonacci series is \(array) and value at index is \(array[index-1])")

    }

    func findTheValFromFabonacciWithRecursionAt(index: Int, sum : Int, currentIndex: Int) -> Int {
       var previousSum = 0
       var sum = 1

      var i = currentIndex
        while i >= 0  {
            if i == 0 {
                return 1
            } else if i == 1 {
                return 1
            } else {
                print("the value of index \(currentIndex) \(index)")
//                print(findTheValFromFabonacciWithRecursionAt(index: index, sum: sum, currentIndex: i))
                i -= 1
                sum = findTheValFromFabonacciWithRecursionAt(index: index, sum: sum, currentIndex: i) + findTheValFromFabonacciWithRecursionAt(index: index, sum: sum, currentIndex: i-1)

                    print("the value of sum is \(sum)")
                    return sum
            }
        }
        return 0
    }


}

