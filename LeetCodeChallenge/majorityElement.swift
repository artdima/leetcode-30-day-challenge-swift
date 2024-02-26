import Foundation
import XCTest

// Majority Element
//
// Given an array nums of size n, return the majority element.
// The majority element is the element that appears more than ⌊n / 2⌋ times.
// You may assume that the majority element always exists in the array.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(majorityElement([3,2,3]), 3)
    }
    func test2() {
        XCTAssertEqual(majorityElement([2,2,1,1,1,2,2]), 2)
    }
}
SolutionTest.defaultTestSuite.run()

func majorityElement(_ nums: [Int]) -> Int {
    return nums.sorted(by:<)[nums.count/2]
}
