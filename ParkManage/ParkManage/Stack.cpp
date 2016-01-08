//
//  Stack.cpp
//  ReversePolishCalculator
//
//  Created by Nero Zuo on 15/11/6.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
using namespace std;
const int kMaxStack = 30;

template <class T>
class Stack {
  int count;
  T entrys[kMaxStack];
public:
  Stack() {
    count = 0;
  }
  
  bool empty() const {
    return count <= 0;
  }
  
  bool isEmpty() {
    return count == 0;
  }
  
  T pop() {
    if (count == 0) {
      printf("Underflow\n");
      exit(0);
    }
    count--;
    return entrys[count];
  }
  
  T top() {
    if (count == 0) {
      printf("Underflow\n");
      exit(0);
    }
    return entrys[count-1];
  }
  void push(T entry){
    if (count >= kMaxStack) {
      printf("Overflow\n");
      exit(0);
    }
    entrys[count] = entry;
    count++;
  }
  
  int getCount() {
    return count;
  }
};