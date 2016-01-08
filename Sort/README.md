# <div align="center">实验七 排序算法的实现和比较 </div>
## 1.实验目的及要求
进一步理解各种排序算法，分析比较不同算法的效率，从而为设计高效算法打下基础。
## 2.实验内容
## 3.需求分析
* 编写quickSort,randomQuickSort,mergeSort,insertionSort,heapSort。并且编写程序比较执行时间。

## 4.概念设计
* 按平常方式编写程序，并且写一个带有闭包参数的函数，将查找算法函数传入即可得到算法执行时间


## 5.详细设计

### quickSort


	func quickSort(inout array:[Int], left: Int, right: Int)	
	Quick sort
	Argus:
		array: 待排序数组
		low: 数组下界
		heigh: 数组上届
	
----------
### randomPartition

	func randomQuickSort(inout array:[Int], left: Int, right: Int)
	Radom select partition, quick sort
	Argus:
		array: 待排序数组
		low: 数组下界
		heigh: 数组上届
		

----------------------
### mergeSort

	func mergeSort(inout array: [Int], left: Int, right: Int)
	
	merge sort
	Arugs:
		array: 待排序数组
		left: 数组下界
		right: 数组上届
--------

### heapSort
	
	func heapSort(var array: [Int]) -> [Int]
	
	Heap sort
	Arugs:
		array: 待排序数组
	Return:
		已排序数组

---------
### insertionSort
	
	func insertionSort(var array: [Int]) -> [Int]
	
	Insertion sort
	Arugs:
		array: 待排序数组
	Return:
		已排序数组

---------

### functionExecuteTime
	
	func functionExecuteTime(sortTimes: Int, listCount: Int,  sortMethods: [[Int] -> ()]) -> [NSTimeInterval]
	
	计算算法运行时间
	传入一系列sort方法，将随机产生一个数组，然后执行每个sort method,sortTimes次
	Argus:
		sortTimes:  每个算法执行次数
		listCount: list的长度
		sortMethods: Closure(闭包)数组，参数，待排序数组
	Return:
		每个sortMethod执行sortTimes的时间的数组
		
		
		
## 6.调试分析
##### 100000此排序长度为20的数组
	randomQuickSort: 0.652504980564117
	quickSort: 0.421910047531128
	mergeSort: 1.65516197681427
	heapSort: 0.685341000556946
	insertionSort: 0.662713050842285
##### 1000次排序长度为200的数组
	randomQuickSort: 0.109481990337372
	quickSort: 0.108630001544952
	mergeSort: 0.234538972377777
	heapSort: 0.134882986545563
	insertionSort: 0.513898968696594

##### 10次排序长度为2000的数组
	randomQuickSort: 0.0154839754104614
	quickSort: 0.0132780075073242
	mergeSort: 0.0280959606170654
	heapSort: 0.0167869925498962
	insertionSort: 0.495329976081848
##### 1次排序长度为20000的数组
	randomQuickSort: 0.0343519449234009
	quickSort: 0.0310660004615784
	mergeSort: 0.0391039848327637
	heapSort: 0.0282340049743652
	insertionSort: 5.01657605171204

## 7.测试结果
当list长度较短时，各算法执行时间相近。当list长度较大时insertionSort效率很差。

## 8.用户手册
本程序是swift代码，需要XCode运行

## 9.附录
GitHub:<https://github.com/Nero5023/DataStructureExperiment>