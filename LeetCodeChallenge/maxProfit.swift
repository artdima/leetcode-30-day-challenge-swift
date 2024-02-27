import Foundation
import XCTest

// Best Time to Buy and Sell Stock
//
// You are given an array prices where prices[i] is the price of a given stock on the ith day.
// You want to maximize your profit by choosing a single day to buy one stock and choosing a
// different day in the future to sell that stock.
// Return the maximum profit you can achieve from this transaction.
// If you cannot achieve any profit, return 0.

class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(maxProfit([7,1,5,3,6,4]), 5)
    }
    func test2() {
        XCTAssertEqual(maxProfit([7,6,4,3,1]), 0)
    }
}
SolutionTest.defaultTestSuite.run()

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    var buy = Int.max
    for price in prices {
        buy = min(buy, price)
        profit = max(profit, price - buy)
    }
    return profit
}
