import Foundation
import XCTest

// Задача из Яндекса
//
//ДАНО: Массив целых чисел, в котором каждое число встречаеится 2 раза, и лишь одно число встречается один раз
//НАДО: Найти это число

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(findSinfle([1, 2, 3, 1, 2, 3, 4]), 4)
    }
    func test2() {
        XCTAssertEqual(findSinfle([1]), 1)
    }
    func test3() {
        XCTAssertEqual(findSinfle([2, 2, 1]), 1)
    }
}
SolutionTest.defaultTestSuite.run()

func findSinfle(_ a: [Int]) -> Int {
    a.reduce(0,^)
}
