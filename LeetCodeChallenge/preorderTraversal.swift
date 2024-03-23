import Foundation
import XCTest

/// 144. Binary Tree Preorder Traversal
///
/// Given the root of a binary tree, return the preorder traversal of its nodes' values.

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }
    return [root.val] + preorderTraversal(root.left) + preorderTraversal(root.right)
}
