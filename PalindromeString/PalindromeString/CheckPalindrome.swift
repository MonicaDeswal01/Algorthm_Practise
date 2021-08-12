//
//  CheckPalindrome.swift
//  PalindromeString
//
//  Created by Monica Mishipay on 12/08/21.
//

/*
 Palindrome are string that form the same word if it reversed
 Examples
 palindrome("abba") == true
 palindrome("abcdef") == false
 */
import Foundation

func checkPalindromeString(str: String) -> Bool{
    for i in 0..<str.count/2 {
        let lastIndex = str.index(str.startIndex, offsetBy: str.count-i-1)
        let lastChar = String(str[lastIndex])
        let firstIndex = str.index(str.startIndex, offsetBy: i)
        let firstChar = String(str[firstIndex])

        if firstChar != lastChar {
          return false
        }
    }
     return true
}


