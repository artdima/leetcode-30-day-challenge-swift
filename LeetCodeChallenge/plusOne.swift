import Foundation
import XCTest

// Pluse One
//
//You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

//Increment the large integer by one and return the resulting array of digits.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(plusOne([1,2,3]), [1,2,4])
    }
    func test2() {
        XCTAssertEqual(plusOne([4,3,2,1]), [4,3,2,2])
    }
    func test3() {
        XCTAssertEqual(plusOne([9]), [1,0])
    }
    func test4() {
        XCTAssertEqual(plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]), [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,7])
    }
}
SolutionTest.defaultTestSuite.run()

func plusOne(_ digits: [Int]) -> [Int] {
    var result: [Int] = []
    var carie = 1
    for i in digits.reversed() {
        if i == 9 && carie > 0 {
            result.append(0)
            carie = 1
        } else if carie > 0 {
            result.append(i + carie)
            carie = 0
        } else {
            result.append(i)
        }
    }
    if carie > 0 {
        result.append(carie)
    }
    return result.reversed()
}

