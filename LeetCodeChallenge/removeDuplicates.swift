import Foundation
import XCTest

//Remove Duplicates from Sorted Array
//
//Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
//
//Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:
//
//Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
//Return k.
//Custom Judge:
//
//The judge will test your solution with the following code:
//
// int[] nums = [...]; // Input array
// int[] expectedNums = [...]; // The expected answer with correct length
//
// int k = removeDuplicates(nums); // Calls your implementation
//
// assert k == expectedNums.length;
// for (int i = 0; i < k; i++) {
//     assert nums[i] == expectedNums[i];
// }
//If all assertions pass, then your solution will be accepted.

class SolutionTest: XCTestCase {
    func test1() {
        var array = [1,1,2]
        XCTAssertEqual(removeDuplicates(&array), 2)
        XCTAssertEqual(array, [1,2])
    }
    func test2() {
        var array = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(removeDuplicates(&array), 5)
        XCTAssertEqual(array, [0,1,2,3,4])
    }
    func test3() {
        var array = [1,1,2]
        XCTAssertEqual(removeDuplicatesUseSet(&array), 2)
        XCTAssertEqual(array, [1,2])
    }
    func test4() {
        var array = [0,0,1,1,1,2,2,3,3,4]
        XCTAssertEqual(removeDuplicatesUseSet(&array), 5)
        XCTAssertEqual(array, [0,1,2,3,4])
    }
}
SolutionTest.defaultTestSuite.run()

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var i = 1
    var result: [Int] = [nums[0]]
    for index in 1..<nums.count {
        if nums[index] != nums[index - 1] {
            result.append(nums[index])
        }
    }
    nums = result
    return nums.count
}

func removeDuplicatesUseSet(_ nums: inout [Int]) -> Int {
    nums = Array(Set(nums))
    nums.sort()
    return nums.count
}
