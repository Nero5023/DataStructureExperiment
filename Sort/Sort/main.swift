//
//  main.swift
//  Sort
//
//  Created by Nero Zuo on 16/1/7.
//  Copyright © 2016年 Nero. All rights reserved.
//
//: Playground - noun: a place where people can play

import Foundation

func partition(inout array: [Int], left: Int, right: Int) -> Int {
    let x = array[left]
    var i = left
    for  j in (left+1)...right {
        if array[j] <= x {
            ++i
//            let temp = array[j]
//            array[j] = array[i]
//            array[i] = temp
            exchange(&array, index1: i, index2: j)
        }
    }
//    let temp = array[i]
//    array[i] = array[left]
//    array[left] = temp
    exchange(&array, index1: i, index2: left)
    return i
}

func quickSort(inout array:[Int], left: Int, right: Int) {
    if left < right {
        let r = partition(&array, left: left, right: right)
        quickSort(&array, left: left, right: r-1)
        quickSort(&array, left: r+1, right: right)
    }else {
        return
    }
}

func exchange(inout array:[Int], index1:Int, index2:Int) {
    let temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}

func randomPartition(inout array:[Int], left: Int, right: Int) -> Int {
    let range = right - left + 1
    let randomIndex = Int(arc4random_uniform(UInt32(range))) + left
    exchange(&array, index1: left, index2: randomIndex)
    let x = array[left]
    var i = left
    for j in (left+1)...right {
        if array[j] <= x {
            ++i
            exchange(&array, index1: i, index2: j)
        }
    }
    exchange(&array, index1: i, index2: left)
    return i
}

func randomQuickSort(inout array:[Int], left: Int, right: Int) {
    if left < right {
        let r = randomPartition(&array, left: left, right: right)
        randomQuickSort(&array, left: left, right: r-1)
        randomQuickSort(&array, left: r+1, right: right)
    }else {
        return
    }
}




func merge(inout array: [Int], left: Int, mid:Int, right: Int) {
    //left<=mid<right
    //array[left...mid] array[mid+1...right]
    let n1 = mid - left + 1
    let n2 = right - mid
    var Larray: [Int] = Array(count: n1 + 1, repeatedValue: 0) //从0开始还有一个最后的正无穷的哨兵
    var Rarray: [Int] = Array(count: n2 + 1, repeatedValue: 0) //从0开始还有一个最后的正无穷的哨兵
    for i in 0..<n1 {
        Larray[i] = array[left + i]
    }
    for i in 0..<n2 {
        Rarray[i] = array[mid + i + 1]
    }
    Larray[n1] = Int.max
    Rarray[n2] = Int.max
    
    var i = 0
    var j = 0
    for k in left...right {
        if Larray[i] <= Rarray[j] {
            array[k] = Larray[i]
            ++i
        }else {
            array[k] = Rarray[j]
            ++j
        }
    }
}

func mergeSort(inout array: [Int], left: Int, right: Int) {
    if left < right {
        let mid = (left + right)/2
        mergeSort(&array, left: left, right: mid)
        mergeSort(&array, left: mid + 1, right: right)
        merge(&array, left: left, mid: mid, right: right)
    }
}

func insertionSort(var array: [Int]) -> [Int] {
    
    for first_unsorted in 1 ..< array.count {
        if array[first_unsorted] < array[first_unsorted - 1] {
            var position = first_unsorted
            let current = array[first_unsorted]
            repeat {
                array[position] = array[position - 1]
                position--
            } while (position > 0 && array[position-1] > current)
            array[position] = current
        }
    }
    return array
}


// Heap sort

func heapify(inout array: [Int], var low: Int, heigh: Int) {
    let temp = array[low]
    for var large = 2*low + 1; large <= heigh; large = 2*large+1 {
        if large < heigh && array[large] < array[large + 1] {
            large++
        }
        if array[large] < temp {
            break
        }
        if low == 0 && large == 0 {
            return
        }
        
        array[low] = array[large]
        low = large
    }
    array[low] = temp
}


func bulidHeap(inout array:[Int]) {
    let count = array.count
    for var i = count/2; i >= 0; i-- {
        heapify(&array, low: i, heigh: count-1)
    }
}

func heapSort(var array: [Int]) -> [Int] {
    bulidHeap(&array)
    for var i = array.count - 1; i > 0; i-- {
        exchange(&array, index1: 0, index2: i)
        heapify(&array, low: 0, heigh: i-1)
    }
    return array
}


func functionExecuteTime(sortTimes: Int, listCount: Int,  sortMethods: [[Int] -> ()]) -> [NSTimeInterval] {
    var list:[Int] = []
    list.reserveCapacity(listCount)
    for _ in 0 ..< listCount {
        list.append(Int(arc4random_uniform(1000)))
    }
    var results:[NSTimeInterval] = []
    results.reserveCapacity(sortMethods.count)
    
    for sortMethod in sortMethods {
        let startTime = NSDate()
        for _ in 0 ..< sortTimes {
            sortMethod(list)
        }
        results.append(NSDate().timeIntervalSinceDate(startTime))
    }
    return results
}


var times = functionExecuteTime(100000, listCount: 20, sortMethods: [{list in
        var list = list
        randomQuickSort(&list, left: 0, right: list.count-1)
    }, { list in
        var list = list
        quickSort(&list, left: 0, right: list.count-1)
    }, { list in
        var list = list
        mergeSort(&list, left: 0, right: list.count-1)
    }, { list in
        heapSort(list)
    }, {list in
        insertionSort(list)
    }
    ])

print("randomQuickSort: \(times[0])\nquickSort: \(times[1])\nmergeSort: \(times[2])\nheapSort: \(times[3])\ninsertionSort: \(times[4])")

//[0.54917299747467, 0.520911991596222, 124.98243701458, 0.944577991962433, 0.14978301525116]
