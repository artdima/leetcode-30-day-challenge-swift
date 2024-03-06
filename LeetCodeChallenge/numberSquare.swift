import Foundation
import XCTest

// Задача из Яндекса
//
// Дан массив целых чисел x длиной N. Массив упорядочен по возрастанию. Написать функцию которая из этого массива
// получит массив квадратов чисел, упорядоченный по возрастанию.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(double([-3, 2, 4, 5]), [4, 9, 16, 25])
    }
    func test2() {
        XCTAssertEqual(double([0, 1, 2]), [0, 1, 4])
    }
    func test3() {
        XCTAssertEqual(double([-2, -1, 0]), [0, 1, 4])
    }
}
SolutionTest.defaultTestSuite.run()


func double(_ arr: [Int]) -> [Int] {
    var lhs = 0
    var rhs = arr.count - 1
    var result: [Int] = Array(repeating: 0, count: arr.count)
    var i: Int = arr.count - 1
    
    while i >= 0 {
        var left = abs(arr[lhs])
        var right = abs(arr[rhs])
        
        if left > right {
            result[i] = left * left
            lhs += 1
        } else {
            result[i] = right * right
            rhs -= 1
        }
        i -= 1
    }
    return result
}
