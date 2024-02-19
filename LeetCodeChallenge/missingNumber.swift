import Foundation
import XCTest

// Missing Number
//
// Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(missingNumber([3,0,1]), 2)
    }
    func test2() {
        XCTAssertEqual(missingNumber([0,1]), 2)
    }
    func test3() {
        XCTAssertEqual(missingNumber([9,6,4,2,3,5,7,0,1]), 8)
    }
}
SolutionTest.defaultTestSuite.run()

func missingNumber(_ nums: [Int]) -> Int {
    let sum = nums.reduce(0, +)
    var mass: [Int] = [0]
    (1...nums.count).enumerated().forEach { index, i in
        mass.append(index + 1)
    }
    return (nums + mass).reduce(0, ^)
}


