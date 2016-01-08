//: Playground - noun: a place where people can play

import UIKit

class TreeNode<T> {
  var lChild: TreeNode?
  var rChild: TreeNode?
  var data: T
  init(data: T, left: TreeNode? = nil, right: TreeNode? = nil) {
    self.data = data
    self.rChild = right
    self.lChild = left
  }
  deinit {
    print( "\(data)has deinted")
  }
}


//var treeNode = TreeNode<Int>()

class Tree<T> {
  var root: TreeNode<T>?
  init(rootData: T) {
    root = TreeNode(data: rootData)
  }
  
  func preOrderTraverse(node: TreeNode<T>?, visit:(T)->()) {
    if let node = node {
      visit(node.data)
      preOrderTraverse(node.lChild, visit: visit)
      preOrderTraverse(node.rChild, visit: visit)
    }
  }
  
  func preOrderTraverseRoot(visit:(T)->())  {
    preOrderTraverse(self.root, visit: visit)
  }
  
  func inOrderTraverse(node: TreeNode<T>?, visit:(T)->()) {
    if let node = node {
      inOrderTraverse(node.lChild, visit: visit)
      visit(node.data)
      inOrderTraverse(node.rChild, visit: visit)
    }
  }
  
  func inOrderTraverseRoot(visit: (T)->()){
    inOrderTraverse(self.root, visit: visit)
  }
  
  func postOrderTraverse(node: TreeNode<T>?, visit:(T)->()) {
    if let node = node {
      postOrderTraverse(node.lChild, visit: visit)
      postOrderTraverse(node.rChild, visit: visit)
      visit(node.data)
    }
  }
  
  func postOrderTraverse(visit:(T)->()) {
    postOrderTraverse(self.root, visit: visit)
  }
  
  
  func treeHeight(node: TreeNode<T>?) -> Int {
    if let node = node {
      return 1 + max(treeHeight(node.lChild), treeHeight(node.rChild))
    }else {
      return 0
    }
  }
  
  func treeLeaves(node: TreeNode<T>?) -> Int {
    if let node = node {
      if node.rChild == nil && node.lChild == nil {
        return 1
      }else {
        return treeLeaves(node.lChild) + treeLeaves(node.rChild)
      }
    }else {
      return 0
    }
  }
  
  func treeLeaves() -> Int {
    return self.treeLeaves(root)
  }
  
  func treeHeight() -> Int {
    return self.treeHeight(root)
  }
}

var tree: Tree? = Tree(rootData: 1)
tree?.root?.lChild = TreeNode(data: 2)
tree?.root?.rChild = TreeNode(data: 3)
tree?.root?.lChild?.lChild = TreeNode(data: 4)
tree?.root?.lChild?.rChild = TreeNode(data: 5)
tree?.root?.lChild?.lChild?.lChild = TreeNode(data: 6)
tree?.root?.lChild?.lChild?.rChild = TreeNode(data: 7)
tree?.root?.lChild?.lChild?.lChild?.lChild = TreeNode(data: 8)
tree?.root?.lChild?.lChild?.lChild?.rChild = TreeNode(data: 9)
tree?.root?.lChild?.lChild?.rChild?.lChild = TreeNode(data: 10)
tree?.root?.lChild?.lChild?.rChild?.rChild = TreeNode(data: 11)
tree?.preOrderTraverseRoot{ node in
  print(node, separator: "", terminator: " ")
}
print("")
tree?.inOrderTraverseRoot { node in
  print(node, separator: "", terminator: " ")
}
print("")
tree?.postOrderTraverse { node in
  print(node, separator: "", terminator: " ")
}

tree?.treeLeaves()
tree?.treeHeight()
tree = nil