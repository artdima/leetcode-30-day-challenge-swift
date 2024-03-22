import Foundation
import XCTest

/// 125. Valid Palindrome
///
/// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and
/// removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric
/// characters include letters and numbers.
/// Given a string s, return true if it is a palindrome, or false otherwise.

/// 37 ms
func isPalindrome(_ s: String) -> Bool {
    let pattern = "[^A-Za-z0-9]+"
    let result = s.replacingOccurrences(of: pattern, with: "", options: [.regularExpression]).lowercased()
    return String(result.reversed()) == result
}

/// 24 ms
func isPalindrome(_ s: String) -> Bool {
       let string = Array(s)
       var i = 0
       var j = string.count - 1

       while i < j {
            if !string[i].isLetter && !string[i].isNumber {
                i += 1
                continue
            }

            if !string[j].isLetter && !string[j].isNumber {
                j -= 1
                continue
            }

            if string[i].lowercased() != string[j].lowercased() {
                return false
            }
            i += 1
            j -= 1
       }
       return true
    }
