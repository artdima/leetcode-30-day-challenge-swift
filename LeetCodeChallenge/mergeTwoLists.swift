import Foundation
import XCTest

// Merge Two Sorted Lists
//
// You are given the heads of two sorted linked lists list1 and list2.
// Merge the two lists into one sorted list. The list should be made by
// splicing together the nodes of the first two lists.
// Return the head of the merged linked list.

class SolutionTest: XCTestCase {
    func test1() {
        var list1 = ListNode(1, ListNode(2, ListNode(4, nil)))
        var list2 = ListNode(1, ListNode(3, ListNode(4, nil)))
        var result = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4, nil))))))
        
        XCTAssertEqual(mergeTwoLists(list1, list2), result)
    }
    func test2() {
        var list1 = ListNode(2)
        var list2 = ListNode(1)
        var result = ListNode(1, ListNode(2))
        
        XCTAssertEqual(mergeTwoLists(list1, list2), result)
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

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil { return list2 }
    if list2 == nil { return list1 }
    
    if list1!.val < list2!.val {
        list1!.next = mergeTwoLists(list1!.next, list2)
        return list1
    } else {
        list2!.next = mergeTwoLists(list2!.next, list1)
        return list2
    }
}

