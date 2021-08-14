//
//  ViewController.swift
//  AnagramsStringMatching
//
//  Created by Monica Mishipay on 14/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     Check to see if two provided strings are anagrams of each other.  Ons string is an anan=gram of another if it uses the same characters in the same quantity.
     1. Only consider characters, not spaces or punctuations.
     2. Consider  capital letters to be same as lower case.
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.checkforAnagramsWith(str1: "rail safety", str2: "fairy taleees")
    }

    func checkforAnagramsWith(str1: String, str2: String) {
        let str1Val = self.removeTheUnwantedWuth(str: str1)
        let str2Val = self.removeTheUnwantedWuth(str: str2)

        var dict1: [Character: Int] = [Character: Int]()
        var dict2: [Character: Int] = [Character: Int]()

        for str in str1Val {
            if dict1.keys.contains(str) {
                let val = dict1[str]! + 1
                dict1[str] = val
            } else {
                dict1[str] = 1
            }
        }

        for str in str2Val {
            if dict2.keys.contains(str) {
                let val = dict2[str]! + 1
                dict2[str] = val
            } else {
                dict2[str] = 1
            }
        }

        print("the value of dict \(dict1) \(dict2)")

        if dict1 == dict2 {
          print("the dict is matching")
        } else {
            print("the dict is not matching")
        }
    }

    func removeTheUnwantedWuth(str: String) -> String {
        let disallowedChar = CharacterSet.letters.inverted
        let formatted = str.components(separatedBy: disallowedChar).joined(separator: "")
        return formatted
    }
}

