import Foundation
import XCTest

// Remove Duplicates from Sorted List
//
// Given the head of a sorted linked list, delete all duplicates such that each
// element appears only once. Return the linked list sorted as well.

class SolutionTest: XCTestCase {
    func test1() {
        var list = ListNode(1, ListNode(1, ListNode(1, nil)))
        var result = ListNode(1)
        
        XCTAssertEqual(deleteDuplicates(list), result)
    }
    func test2() {
        var list = ListNode(1, ListNode(1, ListNode(2)))
        var result = ListNode(1, ListNode(2))
        
        XCTAssertEqual(deleteDuplicates(list), result)
    }
}
SolutionTest.defaultTestSuite.run()
 
public class ListNode: Equatable {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    //MARK: - For tests
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        if lhs.val != rhs.val {
            return false
        }
        
        var tailList1: ListNode = lhs
        var tailList2: ListNode = rhs
        
        while let list1 = tailList1.next, let list2 = tailList2.next {
            if list1.val !=  list2.val {
                return false
            }
            tailList1 = tailList1.next!
            tailList2 = tailList2.next!
        }
        
        if tailList1.next != nil || tailList2.next != nil {
            return false
        }
        return true
    }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var node = head
           
    while let next = node?.next {
       if node?.val == next.val {
           node?.next = next.next
       } else {
           node = next
       }
    }

    return head
}
