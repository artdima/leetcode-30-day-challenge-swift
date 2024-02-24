import Foundation
import XCTest

// Binary Search
//
// Given an array of integers nums which is sorted in ascending order, and an integer target,
// write a function to search target in nums. If target exists, then return its index.
// Otherwise, return -1.
// You must write an algorithm with O(log n) runtime complexity.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(searchBinary([-1,0,3,5,9,12], 9), 4)
    }
    func test2() {
        XCTAssertEqual(searchBinary([-1,0,3,5,9,12], 2), -1)
    }
}
SolutionTest.defaultTestSuite.run()

func searchBinary(_ nums: [Int], _ target: Int) -> Int {
    var lhs = 0
    var rhs = nums.count - 1
    guard !nums.isEmpty else { return -1 }
    
    while lhs <= rhs {
        let mid = (rhs + lhs) / 2
        if nums[mid] > target {
            rhs = mid - 1
        } else if nums[mid] < target {
            lhs = mid + 1
        } else {
            return mid
        }
    }
    return -1
}

