import Foundation
import XCTest

// Задача из Авито
//
//ДАНО: Два неубывающих массива.
//НАДО: Нужно из двух неубывающих массива сделать один.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(solve([-2, 0, 1], [-3, 1, 2]), [-3, -2, 0, 1, 1, 2])
    }
    func test2() {
        XCTAssertEqual(solve([-2, 3, 3], [-5, 0]), [-5, -2, 0, 3, 3])
    }
    func test3() {
        XCTAssertEqual(solve([6], []), [6])
    }
}
SolutionTest.defaultTestSuite.run()

func solve(_ a: [Int], _ b: [Int]) -> [Int] {
    var p1 = 0
    var p2 = 0
    var result: [Int] = []
    
    while a.count != p1 || b.count != p2 {
        if p2 >= b.count || (p1 < a.count && a[p1] <= b[p2]){
            result.append(a[p1])
            p1 += 1
        } else {
            result.append(b[p2])
            p2 += 1
        }
    }
    return result
}
