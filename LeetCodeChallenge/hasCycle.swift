import Foundation
import XCTest

// 141. Linked List Cycle
//
// Given head, the head of a linked list, determine if the linked list has a cycle in it.
// There is a cycle in a linked list if there is some node in the list that can be
// reached again by continuously following the next pointer. Internally, pos is used to
// denote the index of the node that tail's next pointer is connected to. Note that pos
// is not passed as a parameter.
// Return true if there is a cycle in the linked list. Otherwise, return false.

class SolutionTest: XCTestCase {
    func test1() {
        var node1 = ListNode(1)
        var node2 = ListNode(2)
        var node3 = ListNode(3)
        var node4 = ListNode(4)
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node2
        XCTAssertEqual(hasCycle(node1), true)
    }
    func test2() {
        var node1 = ListNode(1)
        var node2 = ListNode(2)
        node1.next = node2
        node2.next = node1
        XCTAssertEqual(hasCycle(node1), true)
    }
}
SolutionTest.defaultTestSuite.run()
 
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head?.next?.next
    
    while fast != nil {
        if slow === fast {
            return true
        }
        slow = slow?.next
        fast = fast?.next?.next
    }
    return false
}
