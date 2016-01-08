# <div align="center">实验八 二叉树的建立和遍历 </div>
## 1.实验目的及要求
进一步理解和掌握二叉树的基本操作
## 2.实验内容
## 3.需求分析
* 为树类设计先序，中序，后序，层序遍历算法，计算二叉树深度，叶子节书名

## 4.概念设计
* 建立节点类和树类

## 5.详细设计

### TreeNode<T>
#### Property
	var lChild: TreeNode?
  	var rChild: TreeNode?
  	var data: T
#### Method
	init(data: T, left: TreeNode? = nil, right: TreeNode? = nil)
初始化方法  	
	
----------
### Tree<T>
#### Property
	var root: TreeNode<T>?

#### Method
	func preOrderTraverse(node: TreeNode<T>?, visit:(T)->())
	func preOrderTraverseRoot(visit:(T)->())
	先序遍历
	Argus:
		visit: Closure 闭包
	
------------------
	func inOrderTraverse(node: TreeNode<T>?, visit:(T)->())
	func inOrderTraverseRoot(visit: (T)->())
	中序遍历
	Argus:
		visit: Closure 闭包
		
-------------
	func postOrderTraverse(node: TreeNode<T>?, visit:(T)->())
	func postOrderTraverse(visit:(T)->())
	后序遍历
	Argus:
		visit: Closure 闭包
-----------
	func treeHeight(node: TreeNode<T>?) -> Int
	计算树的高度
	Argues:
		计算树高的起始点
	Return:
		树的高度
-----------------
	func treeLeaves(node: TreeNode<T>?) -> Int
	计算叶子节点数目
	Argues:
		计算叶子节点数目的起始点
	Return:
		树的节点数目
	
--------
由于Swift采用ARC(Auto reference count)内存管理，所以这里不需要析构函数
## 6.调试分析
	构造二叉树
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
	
--------
	先序遍历preOrderTraverseRoot
	1 2 4 6 8 9 7 10 11 5 3 
	中序遍历inOrderTraverseRoot
	8 6 9 4 10 7 11 2 5 1 3 
	后序遍历postOrderTraverse
	8 9 6 10 11 7 4 5 2 3 1 
	树高tree?.treeHeight()
	5
	书的叶子数目tree?.treeLeaves()
	6
		

## 7.测试结果
测试结果与预期一致

## 8.用户手册
本程序是swift代码，需要XCode运行

## 9.附录
GitHub:<https://github.com/Nero5023/DataStructureExperiment>