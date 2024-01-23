import Foundation
import XCTest

//Longest Common Prefix
//
//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(longestCommonPrefix(["flower","flow","flight"]), "fl")
    }
    func test2() {
        XCTAssertEqual(longestCommonPrefix(["dog","racecar","car"]), "")
    }
}
SolutionTest.defaultTestSuite.run()

func longestCommonPrefix(_ strs: [String]) -> String {
    var result = strs[0]
    for i in 1..<strs.count {
        let pre = strs[i]
        while !pre.hasPrefix(result) {
            result = String(result.dropLast())
            if result.count == 0 {
                return ""
            }
        }
    }
    return result
}

