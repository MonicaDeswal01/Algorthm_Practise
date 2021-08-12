//
//  ViewController.swift
//  PalindromeString
//
//  Created by Monica Mishipay on 12/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       print("the result for the value abba \(checkPalindromeString(str: "abba"))")
       print("the result for the value abba \(checkPalindromeString(str: "abcdef"))")

        print("the result for the value abba \(checkPalindromeString(str: "abababababababababababababa"))")

    }


}

