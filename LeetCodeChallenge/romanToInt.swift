import Foundation
import XCTest

// Roman to Integer
// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000
// For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
//
// Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
// I can be placed before V (5) and X (10) to make 4 and 9.
// X can be placed before L (50) and C (100) to make 40 and 90.
// C can be placed before D (500) and M (1000) to make 400 and 900.
// Given a roman numeral, convert it to an integer.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(romanToInt("III"), 3)
    }
    func test2() {
        XCTAssertEqual(romanToInt("LVIII"), 58)
    }
    func test3() {
        XCTAssertEqual(romanToInt("MCMXCIV"), 1994)
    }
}
SolutionTest.defaultTestSuite.run()

func romanToInt(_ s: String) -> Int {
    let roman = ["I" : 1,
                 "V" : 5,
                 "X" : 10,
                 "L" : 50,
                 "C" : 100,
                 "D" : 500,
                 "M" : 1000]
    let romanNumber = Array(s.reversed())
    
    var result = 0
    for i in romanNumber {
        let num = roman[i.description, default: 0]
        if 4 * num < result {
            result -= num
        } else {
            result += num
        }
    }
    return result
}
