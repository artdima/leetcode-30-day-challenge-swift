import Foundation
import XCTest

// 69. Sqrt(x)
//
// Given a non-negative integer x, return the square root of x
// rounded down to the nearest integer. The returned integer should
// be non-negative as well.
// You must not use any built-in exponent function or operator.
// For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(mySqrt(4), 2)
    }
    func test2() {
        XCTAssertEqual(mySqrt(8), 2)
    }
    func test3() {
        XCTAssertEqual(mySqrt(5), 2)
    }
}
SolutionTest.defaultTestSuite.run()
 
func mySqrt(_ x: Int) -> Int {
    guard x != 0 else { return 0 }
    var left = 1
    var right = x
    
    while right - left > 1 {
        let midl = ((right - left) / 2) + left
        if midl * midl > x {
            right = midl
        } else if midl * midl < x {
            left = midl
        } else {
            return midl
        }
    }
    
    return left
}
