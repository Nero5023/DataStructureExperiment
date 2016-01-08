# <div align="center">实验六 查找算法的实现和比较 </div>
## 1.实验目的及要求
进一步理解各种查找算法，分析比较不同算法的效率，从而为设计高效算法打下基础。
## 2.实验内容
## 3.需求分析
* 编写sequential_search和binary_search1,binary_search2及其递归版本。并且编写程序比较执行时间。

## 4.概念设计
* 按平常方式编写程序，并且写一个带有闭包参数的函数，将查找算法函数传入即可得到算法执行时间


## 5.详细设计

### binarySearch


	func binarySearch(list:[Int], low: Int, heigh: Int, key: Int) -> Int?
	
	Binary searh Recurse version 1
	Argus:
		list:[Int] 存储Int类型的array, 待查找数组
		low: 数组下界
		heigh: 数组上届
		key: 待查找关键字
	Return:
		若查找到目标关键字返回position
		若没找到返回nil
	
----------
### binarySearch2

	func binarySearch2(list:[Int], low: Int, heigh: Int, key: Int) -> Int?
	
	Binary searh Recurse version 2
	Argus:
		list:[Int] 存储Int类型的array, 待查找数组
		low: 数组下界
		heigh: 数组上届
		key: 待查找关键字
	Return:
		若查找到目标关键字返回position
		若没找到返回nil
		
--------

### seqSearch
	
	func seqSearch(list: [Int], target: Int) -> Int?
	
	Sequential search
	Argus:
		list: 带查找数组
		target: 待查找关键字
	Return:
		若查找到目标关键字返回position
		若没找到返回nil
----------------------
### binarySearchNotRecurse

	func binarySearchNotRecurse(list: [Int], key: Int) -> Int? 
	
	Binary Search not recurse version.
	Arugs:
		list: 待查找数组
		key: 待查找关键字
	Return:
		若查找到目标关键字返回position
		若没找到返回nil

---------
### functionExecuteTime
	
	func functionExecuteTime(searhTimes: Int, listCount: Int, isOrdered: Bool, searchMethod: ([Int], Int) -> ()) -> NSTimeInterval
	
	计算算法运行时间
	将随机产生一个数组，然后随机查找数组中的关键字执行searhTimes次
	Argus:
		searhTimes: 查找次数
		listCount: list的长度
		isOrdered: list是否有序
		searchMethod: Closure(闭包)，参数，带查找list,和带查找关键字
	Return:
		searhMethod执行searhTimes的时间
		
		
		
## 6.调试分析
#### 成功查找
#### 100000次查找长度20的list
	binarySearch:0.173599004745483 
	binarySearch2:0.214688003063202 
	binarySearchNotRecurse: 0.158809006214142, 
	seqSearch, not ordered:0.151642978191376
	seqSearch,ordered:0.139721035957336

#### 100000次查找长度200的list
	binarySearch:0.273579001426697 
	binarySearch2:0.317856013774872 
	binarySearchNotRecurse: 0.227391004562378, 
	seqSearch, not ordered:0.52570903301239
	seqSearch,ordered:0.542755007743835
##### 100000次查找长度2000的list

	binarySearch:0.351477980613708 
	binarySearch2:0.458047032356262 
	binarySearchNotRecurse: 0.27479100227356, 
	seqSearch, not ordered:2.68576198816299
	seqSearch,ordered:4.75637400150299


## 7.测试结果
当list长度较短时，各算法执行时间相近。当list长度较大时binaySearch较快。binarySearch比binarySearch2快。List长度较长时seqSearch，查询未排序的list较快

## 8.用户手册
本程序是swift代码，需要XCode运行

## 9.附录
GitHub:<https://github.com/Nero5023/DataStructureExperiment>