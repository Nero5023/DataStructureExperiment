//
//  Queue.cpp
//  StringMatching
//
//  Created by Nero Zuo on 15/11/13.
//  Copyright © 2015年 Nero. All rights reserved.
//

//#include "Queue.h"

#include "iostream"
using namespace std;

const int kMaxSize = 50;
template <class T>
class Queue {
  int count;
  int front;
  int rear;
  T entry[kMaxSize];
public:
  Queue() {
    count = 0;
    rear = kMaxSize - 1;
    front = 0;
  }
  
  bool isEmpty() const{
    return count == 0;
  }
  
  void append(T &item) {
    if (count >= kMaxSize) {
      cout << "overflow" << endl;
      exit(0);
    }
    count ++;
    rear = (rear+1) % kMaxSize;
    entry[rear] = item;
  }
  
  T& serve() {
    if (count <= 0) {
      cout << "underflow" << endl;
      exit(0);
    }
    count--;
    T item = entry[front];
    front = (front+1)%kMaxSize;
    return item;
  }
  
  T& retrive() {
    if (count <= 0 ) {
      cout << "underflow" << endl;
      exit(0);
    }
    return entry[front];
  }
  
  int getCount() {
    return count;
  }
  
};

