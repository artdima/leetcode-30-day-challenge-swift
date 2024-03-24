import Foundation
import XCTest

/// 145. Binary Tree Postorder Traversal
///
/// Given the root of a binary tree, return the postorder traversal of its nodes' values.

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }
    return postorderTraversal(root.left) + postorderTraversal(root.right) + [root.val]
}
