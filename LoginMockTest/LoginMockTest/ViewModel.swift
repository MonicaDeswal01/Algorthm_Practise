//
//  ViewModel.swift
//  LoginMockTest
//
//  Created by Monica Mishipay on 16/08/21.
//

import Foundation

struct ViewModel {

    func arrangedPalindrome(_ s: String) -> String {
        let reversedString = s.reversed()
        if s == String(reversedString) {

            let arrayOfString = Array(s)
            let firstArray = Array(arrayOfString[0..<arrayOfString.count/2]).sorted()
            let lastArray = Array(arrayOfString[arrayOfString.count/2..<arrayOfString.count]).sorted()

            print("the value of firt array \(firstArray)")
            print("the value of last array \(lastArray)")

//            var ascendingString = Array(s.sorted())
//
//            var generatedString = Array(s.sorted())
//
//            for i in 0..<ascendingString.count/2 {


          //  }

            return ""

        } else {
           return "NO"
        }
       return ""
    }
}


/**
//struct ViewModel{
//    func isValidEmail(email: String) -> Bool {
//        return true
//    }
//
//    func proccedTheLoginProcess(userDetails: String,
//                                competionHandler: @escaping (SuccessReuqest)->Void) {
//
//        let modelObject = SuccessReuqest(status: true)
//        competionHandler(modelObject)
//    }
//
//    func check() {
//        var thing = "cars"  let closure = { [thing] in   print("I like \(thing)") } thing = "airplanes" closure() //} //}
//
//
//
//
//struct SuccessReuqest {
//    let status: Bool
//
//}
//
//
//
//
//
//
//
// // // // //
//
//var thing = "cars" let closure = { [thing] in   print("I like \(thing)") } thing = "airplanes" closure() //  

 
**/
