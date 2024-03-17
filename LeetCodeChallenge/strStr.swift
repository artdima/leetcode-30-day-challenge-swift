import Foundation
import XCTest

// 28. Find the Index of the First Occurrence in a String
//
// Given two strings needle and haystack, return the index of the first occurrence of
// needle in haystack, or -1 if needle is not part of haystack.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(strStr("sadbutsad", "sad"), 0)
    }
    func test2() {
        XCTAssertEqual(strStr("leetcode", "leeto"), -1)
    }
    func test3() {
        XCTAssertEqual(strStr("mississippi", "issipi"), -1)
    }
}
SolutionTest.defaultTestSuite.run()
 
func strStr(_ haystack: String, _ needle: String) -> Int {
    let haystack = Array(haystack)
    let needle = Array(needle)
    guard haystack.count >= needle.count else { return -1 }
    var first = 0
    var second = 0
    var countTrue = 0
    
    while first < haystack.count {
        if haystack[first] == needle[0] {
            while second < needle.count {
                if first + second < haystack.count && haystack[first + second] == needle[second] {
                    countTrue += 1
                }
                second += 1
            }
            if countTrue == needle.count {
                return first
            }
            countTrue = 0
            second = 0
        }
        first += 1
    }
    
    return -1
}
