import Foundation
import XCTest

/// 160. Intersection of Two Linked Lists
///
/// Given the heads of two singly linked-lists headA and headB, return the node at
/// which the two lists intersect. If the two linked lists have no intersection at all, return null.

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var l1 = headA
    var l2 = headB

    while l1 !== l2 {
        l1 = (l1 == nil) ? headB : l1?.next
        l2 = (l2 == nil) ? headA : l2?.next
    }
    return l1
}
