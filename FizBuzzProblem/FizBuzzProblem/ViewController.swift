//
//  ViewController.swift
//  FizBuzzProblem
//
//  Created by Monica Mishipay on 12/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.printTheFizBuzzBaseOn(val: 15)
    }

    func printTheFizBuzzBaseOn(val: Int) {
        if val % 3 == 0 && val % 5 == 0 {
            print("fizzbuzz")
        } else if val % 3 == 0 {
            print("fizz")
        } else if val % 5 == 0 {
            print("buzz") 
        }
    }

}

