import Foundation
import XCTest

/// 168. Excel Sheet Column Title
///
/// Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.
/// For example:
/// A -> 1
/// B -> 2
/// C -> 3
/// ...
/// Z -> 26
/// AA -> 27
/// AB -> 28
/// ...


func convertToTitle(_ columnNumber: Int) -> String {
    var result = ""
    let letters = (UnicodeScalar("A").value...UnicodeScalar("Z").value).compactMap { Character(UnicodeScalar($0)!) }.map { String($0) }
    var number = columnNumber
    
    while number > 0 {
        result += letters[(number - 1) % 26]
        number = (number - 1) / 26
    }
    return String(result.reversed())
}
