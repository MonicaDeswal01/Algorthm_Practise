//
//  ViewController.swift
//  MatchingInString
//
//  Created by Monica Mishipay on 12/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     GIven a string, return the character that is most commonly used in the string
        maxChar("abccccccd") = c
        maxChar("apple 123lllll") = "l"
     */

    override func viewDidLoad() {
        super.viewDidLoad()

        self.maxChar(str: "abccccccd")
        // Do any additional setup after loading the view.
    }

    func maxChar(str: String) {
        var countDictionaary = [Character: Int]()
        for (index,val) in str.enumerated() {
            let findTheChar = countDictionaary.keys.contains(val)

            if findTheChar {
                let dictVal = countDictionaary[val]
                countDictionaary[val] = dictVal! + 1
            } else {
                countDictionaary[val] = 1
            }
            }


        let maxValue = countDictionaary.max { a, b in
            a.value < b.value
        }
        print("the values inside the dictionary \(maxValue) \(maxValue?.key)")
        }

}

