//
//  ViewController.swift
//  ReverseString
//
//  Created by Monica Mishipay on 09/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let reversedString1 = self.reverseTheStringImplementation1(str: "463473nfjdhfjkdh")
        print(reversedString1)



        let reversedString2 = self.reverseTheStringImplementation2(str: "463473nfjdhfjkdh")
        print(reversedString2)
    }

    func reverseTheStringImplementation1(str: String) -> String {

        var i = str.count
        var newString = ""
        while  i > 0 {
            let index = str.index(str.startIndex, offsetBy: i-1)
            
            newString += String(str[index])

            i -= 1
        }
        print("the value of new string \(newString)")
        return newString
    }

    func reverseTheStringImplementation2(str: String) -> String {
        let reversedString = String(str.reversed())
        return reversedString
    }

}

