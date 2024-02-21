import Foundation
import XCTest

// Intersection of Two Arrays
//
// Given two integer arrays nums1 and nums2, return an array of their intersection.
// Each element in the result must be unique and you may return the result in any order.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(intersection([1,2,2,1], [2,2]), [2])
    }
    func test2() {
        XCTAssertEqual(intersection([4,9,5], [9,4,9,8,4]), [4,9])
    }
    func test3() {
        XCTAssertEqual(intersectionTwo([1,2,2,1], [2,2]), [2])
    }
    func test4() {
        XCTAssertEqual(intersectionTwo([4,9,5], [9,4,9,8,4]), [4,9])
    }
}
SolutionTest.defaultTestSuite.run()

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = Set<Int>()
    nums1.forEach { num in
        if nums2.contains(num) {
            result.insert(num)
        }
    }
    return Array(result)
}

func intersectionTwo(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    return Array(Set(nums1).intersection(nums2))
}

