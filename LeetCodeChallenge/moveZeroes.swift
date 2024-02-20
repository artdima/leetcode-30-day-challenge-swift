import Foundation
import XCTest

// Move Zeroes
//
// Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
// Note that you must do this in-place without making a copy of the array.

class SolutionTest: XCTestCase {
    func test1() {
        var mass = [0,1,0,3,12]
        moveZeroes(&mass)
        XCTAssertEqual(mass, [1,3,12,0,0])
    }
    func test2() {
        var mass = [0]
        moveZeroes(&mass)
        XCTAssertEqual(mass, [0])
    }
    
    func test3() {
        var mass = [0, 0, 0, 1]
        moveZeroes(&mass)
        XCTAssertEqual(mass, [1, 0, 0, 0])
    }
    
    func test4() {
        var mass = [0,1,0,3,12]
        moveZeroesTwo(&mass)
        XCTAssertEqual(mass, [1,3,12,0,0])
    }
    func test5() {
        var mass = [0]
        moveZeroesTwo(&mass)
        XCTAssertEqual(mass, [0])
    }
    
    func test6() {
        var mass = [0, 0, 0, 1]
        moveZeroesTwo(&mass)
        XCTAssertEqual(mass, [1, 0, 0, 0])
    }
}
SolutionTest.defaultTestSuite.run()

var mass = [0,1,0,3,12]
moveZeroes(&mass)
print(mass)

func moveZeroes(_ nums: inout [Int]) {
    var numsZeroes: [Int] = []
    var numsNonZeroes: [Int] = []
    for (index, num) in nums.enumerated() {
        if num == 0 {
            numsZeroes.append(num)
        } else {
            numsNonZeroes.append(num)
        }
    }
    nums = numsNonZeroes + numsZeroes
}

func moveZeroesTwo(_ nums: inout [Int]) {
    var index = 0
    for num in nums where num != 0 {
        nums[index] = num
        index += 1
    }
    (index ..< nums.count).forEach { nums[$0] = 0 }
}


