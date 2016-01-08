//
//  main.swift
//  Search
//
//  Created by Nero Zuo on 16/1/7.
//  Copyright © 2016年 Nero. All rights reserved.
//

//: Playground - noun: a place where people can play


import Foundation
let date1 = NSDate()
let date = NSDate().timeIntervalSinceDate(date1)

func functionTime(function: ()->()) -> NSTimeInterval {
  let startTime = NSDate()
  function()
  return NSDate().timeIntervalSinceDate(startTime)
}



func binarySearch(list:[Int], low: Int, heigh: Int, key: Int) -> Int? {
  if(low > heigh) {
    return nil
  }
  let mid = (low + heigh) / 2
  if list[mid] == key {
    return mid
  }else if (list[mid] < key){
    return binarySearch(list, low: mid+1, heigh: heigh, key: key)
  }else {
    return binarySearch(list, low: low, heigh: mid-1, key: key)
  }
}

func binarySearch2(list:[Int], low: Int, heigh: Int, key: Int) -> Int? {
    if (low < heigh) {
        let mid = (heigh + low) / 2
        if (list[mid] < key) {
            return binarySearch2(list, low: mid + 1, heigh: heigh, key: key)
        }else {
            return binarySearch2(list, low: low, heigh: mid, key: key)
        }
    }else if low > heigh {
        return nil
    }else {
        if key == list[low] {
            return low
        }else {
            return nil
        }
    }
}

//binarySearch(list, low: 0, heigh: list.count-1, key: 1703964683)



func seqSearch(list: [Int], target: Int) -> Int? {
  let count = list.count
  for i in 0..<count {
    if (target == list[i]) {
      return i
    }
  }
  return nil
}

func binarySearchNotRecurse(list: [Int], target: Int) -> Int? {
  var mid = 0, low = 0, high = list.count - 1
  while (low <= high) {
    mid = (low + high) / 2
    if (list[mid] == target) { return mid }
    if (target < list[mid]) {
      high = mid - 1
    }else {
      low = mid + 1
    }
  }
  return nil
}

//functionTime{
//  binarySearch(list, low: 0, heigh: list.count-1, key: 2053999932)
//}

func functionExecuteTime(searhTimes: Int, listCount: Int, isOrdered: Bool, searchMethod: ([Int], Int) -> ()) -> NSTimeInterval {
  var list:[Int] = []
  list.reserveCapacity(listCount)
  for _ in 0 ..< listCount {
    list.append(Int(arc4random_uniform(1000)))
  }
  if isOrdered {
    list = list.sort()
  }
  let startTime = NSDate()
  for _ in 0 ..< searhTimes {
    let radomindex = Int(arc4random_uniform(UInt32(listCount)))
    searchMethod(list,list[radomindex])
  }
  return NSDate().timeIntervalSinceDate(startTime)
}



var time1 = functionExecuteTime(1000000, listCount: 20, isOrdered: true) { list, key in
   binarySearch(list, low: 0, heigh: list.count-1, key: key)
}

var time2 = functionExecuteTime(1000000, listCount: 20, isOrdered: true) { list, key in
   binarySearch2(list, low: 0, heigh: list.count-1, key: key)
}

var time3 = functionExecuteTime(1000000, listCount: 20, isOrdered: true) { list, key in
    binarySearchNotRecurse(list, target: key)
}

var time4 = functionExecuteTime(1000000, listCount: 20, isOrdered: false) { list, key in
  seqSearch(list, target: key)
}

var time5 = functionExecuteTime(1000000, listCount: 20, isOrdered: true) { list, key in
    seqSearch(list, target: key)
}


print("binarySearch:\(time1) \nbinarySearch2:\(time2) \nbinarySearchNotRecurse: \(time3), \nseqSearch, not ordered:\(time4)\nseqSearch,ordered:\(time5)")
