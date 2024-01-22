import Foundation
import XCTest

// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.

class MyTestCase: XCTestCase {
    func testLoggingIn() {
        XCTAssertEqual(twoSum([2,7,11,15], 9), [0,1])
        XCTAssertEqual(twoSum([3,2,4], 6), [1,2])
        XCTAssertEqual(twoSum([3,3], 6), [0,1])
    }
}
MyTestCase.defaultTestSuite.run()


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let n = nums.count

    for i in 0 ..< n {
        for j in i + 1 ..< n {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }

    return []
}
