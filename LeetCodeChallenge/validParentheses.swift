import Foundation
import XCTest

//Valid Parentheses
//
//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(isValid("()"), true)
    }
    func test2() {
        XCTAssertEqual(isValid("()[]{}"), true)
    }
    func test3() {
        XCTAssertEqual(isValid("(]"), false)
    }
    func test4() {
        XCTAssertEqual(isValid("{[]}"), true)
    }
    
}
SolutionTest.defaultTestSuite.run()

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    
    var stack: [Character] = []
    for item in s {
        switch item {
        case "(": stack.append(")")
        case "{": stack.append("}")
        case "[": stack.append("]")
        default:
            if stack.isEmpty || stack.removeLast() != item {
                return false
            }
        }
    }
    return stack.isEmpty
}
