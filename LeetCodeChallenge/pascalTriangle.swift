import Foundation
import XCTest

// Pascal's Triangle
//
// Given an integer numRows, return the first numRows of Pascal's triangle.
// In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(generate(5), [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])
    }
    func test2() {
        XCTAssertEqual(generate(1), [[1]])
    }
}
SolutionTest.defaultTestSuite.run()

func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: numRows), count: numRows)
    for i in 0..<numRows {
        result[i][0] = 1
        for j in 1..<numRows where i > 0 {
            result[i][j] = result[i - 1][j - 1] + result[i - 1][j]
        }
    }
    
    return result.compactMap { $0.filter { $0 > 0} }
}
