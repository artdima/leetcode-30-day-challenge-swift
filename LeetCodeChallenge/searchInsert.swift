import Foundation
import XCTest

//Search Insert Position
//
//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You must write an algorithm with O(log n) runtime complexity.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(searchInsert([1,3,5,6], 5), 2)
    }
    func test2() {
        XCTAssertEqual(searchInsert([1,3,5,6], 2), 1)
    }
    func test3() {
        XCTAssertEqual(searchInsert([1,3,5,6], 7), 4)
    }
    func test4() {
        XCTAssertEqual(searchInsert([1,3,5,6], 0), 0)
    }
    func test5() {
        XCTAssertEqual(searchInsert([1,3], 3), 1)
    }
}
SolutionTest.defaultTestSuite.run()

// O(n)
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if nums[nums.count - 1] < target {
        return nums.count
    }
    if nums[0] > target {
        return 0
    }
    
    for index in 1..<nums.count {
        if nums[index - 1] == target {
            return index - 1
        } else if nums[index] >= target {
            return index
        }
    }
    return 0
}

// O(Log n)
func searchInsert2(_ nums: [Int], _ target: Int) -> Int {
    var start = 0
    var end = nums.count - 1
    var middle = 0
    while start <= end {
        middle = (start + end) / 2
        if nums[middle] == target { return middle }
        if nums[middle] < target {
            start = middle + 1
        } else {
            end = middle - 1
        }
    }
    if nums[middle] < target { middle += 1 }
    return middle
}
