import Foundation
import XCTest

// Single Number
//
// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
// You must implement a solution with a linear runtime complexity and use only constant extra space.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(singleNumber([2,2,1]), 1)
    }
    func test2() {
        XCTAssertEqual(singleNumber([4,1,2,1,2]), 4)
    }
    func test3() {
        XCTAssertEqual(singleNumber([1]), 1)
    }
}
SolutionTest.defaultTestSuite.run()

func singleNumber(_ nums: [Int]) -> Int {
    return nums.reduce(0, ^)
}
