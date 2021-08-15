//
//  ViewController.swift
//  Capitalize Sentense
//
//  Created by Monica Mishipay on 15/08/21.
//

import UIKit

class ViewController: UIViewController {
    /**
      Write a function that acceps a string . The function should capitalize the first letter of each word in the string them return the capitalzed string
Examples
     capitalize('a short sentense'') -> 'A Short Sentence'
    capitalize('a lazy fox') -> 'A Lazy Fox'
    capitalize('look, it is working') -> 'Look, It Is Working'
     */

    override func viewDidLoad() {
        super.viewDidLoad()

        let capiitaliseString = self.capitalizeIMplemetation1(str: "look, it is working")
        print("the capitalized string is \(capiitaliseString)")
        // Do any additional setup after loading the view.

        self.capitalizeIMplemetation2(str: "look, it is working")

        self.capitalizeIMplemetation3(str: "look, it is working")
    }

    func capitalizeIMplemetation1(str: String) -> String {
        let capiitaliseString = str.capitalized

        return capiitaliseString
    }

    func capitalizeIMplemetation2(str: String) -> String {
        var finalArray = [String]()
        let splitArray = str.split(separator: " ")
        for str in splitArray {
            finalArray.append(str.capitalized)
        }

        let finalString = finalArray.joined(separator: " ")

        let joinArray = finalArray.reduce("") { $0 + " " + $1 }
        print(joinArray)
        return finalString
    }


    //Implement the logic when the char-1 is equal to " " then capitalise that character
    func capitalizeIMplemetation3(str: String){

//        var finalArray = [String]()
//        let splitArray = str.split(separator: " ")
//        for str in splitArray {
//            finalArray.append(str.capitalized)
//        }
//
//        let finalString = finalArray.joined(separator: " ")
//
//        let joinArray = finalArray.reduce("") { $0 + " " + $1 }
//        print(joinArray)
//        return finalString
    }









}

