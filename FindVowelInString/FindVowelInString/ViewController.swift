//
//  ViewController.swift
//  FindVowelInString
//
//  Created by Monica Mishipay on 15/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
     Write a function that returns the number of vowels used in a string
       vowels are the characters 'a', 'e', 'i', 'o', 'u'

     Examples
     vowels('Hi There!') ---> 3
     vowels('Why do you ask?') --> 4
     vowels('why?') --> 0
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.findVowelsInString("why?'"))
        // Do any additional setup after loading the view.
    }

    func findVowelsInString(_ str: String) -> Int {
       let alphabetString = "aeiou"
       var count = 0
        for char in str {
            for alphabets in alphabetString {
                if char == alphabets {
                    count += 1
                }
            }
        }

        return count
    }

}

