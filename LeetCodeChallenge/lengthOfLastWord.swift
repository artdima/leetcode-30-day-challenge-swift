import Foundation
import XCTest

//Length of Last Word
//
//Given a string s consisting of words and spaces, return the length of the last word in the string.
//
//A word is a maximal substring consisting of non-space characters only.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(lengthOfLastWord("Hello World"), 5)
    }
    func test2() {
        XCTAssertEqual(lengthOfLastWord("   fly me   to   the moon  "), 4)
    }
    func test3() {
        XCTAssertEqual(lengthOfLastWord("luffy is still joyboy"), 6)
    }
    func test4() {
        XCTAssertEqual(lengthOfLastWord("a"), 1)
    }
    func test5() {
        XCTAssertEqual(lengthOfLastWord(" a"), 1)
    }
    func test6() {
        XCTAssertEqual(lengthOfLastWord("a "), 1)
    }
}
SolutionTest.defaultTestSuite.run()

func lengthOfLastWord(_ s: String) -> Int {
    let value = Array(s.reversed())
    var result: [Character] = []
    for i in 0..<value.count {
        if value[i] != " " {
            result.append(value[i])
        }
        if (value[i] == " " || i == value.count - 1)  && result.count > 0 {
            return result.count
        }
    }
    return 0
}

func lengthOfLastWord2(_ s: String) -> Int {
   guard !s.isEmpty else { return 0 }
   
   var array: [String] = s.trimmingCharacters(in: .whitespaces).components(separatedBy: " ")
   var last = array.last
   
   return last!.count
}
