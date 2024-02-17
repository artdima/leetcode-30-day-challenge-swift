import Foundation
import XCTest

// Contains Duplicate
//
// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(containsDuplicate([1,2,3,1]), true)
    }
    func test2() {
        XCTAssertEqual(containsDuplicate([1,2,3,4]), false)
    }
    func test3() {
        XCTAssertEqual(containsDuplicate([1,1,1,3,3,4,3,2,4,2]), true)
    }
}
SolutionTest.defaultTestSuite.run()

func containsDuplicate(_ nums: [Int]) -> Bool {
    let noDuplicate = Array(Set(nums))
    return nums.count != noDuplicate.count
}
