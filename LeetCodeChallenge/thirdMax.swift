import Foundation
import XCTest

// Third Maximum Number
//
// Given an integer array nums, return the third distinct maximum number in this array.
// If the third maximum does not exist, return the maximum number.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(thirdMax([3,2,1]), 1)
    }
    func test2() {
        XCTAssertEqual(thirdMax([1,2]), 2)
    }
    func test3() {
        XCTAssertEqual(thirdMax([2,2,3,1]), 1)
    }
}
SolutionTest.defaultTestSuite.run()

func thirdMax(_ nums: [Int]) -> Int {
    let arr = Set(nums).sorted(by: >).prefix(3)
    return arr.count == 3 ? arr.last! : arr.first!
}
