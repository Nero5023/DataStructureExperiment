//
//  Queue.cpp
//  ParkManage
//
//  Created by Nero Zuo on 15/11/27.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
using namespace std;

template <class T>
class Queue {
//  struct QNode {
//    T data;
//    struct QNode *next;
//    QNode() {
//      next = NULL;
//    }
//    QNode(T &item, QNode *add_on = NULL){
//      
//    }
//  };
  struct QNode {
    T data;
    struct QNode *next;
    QNode() {
      next = NULL;
    }
    QNode(T item, QNode *add_on = NULL) {
      data = item;
    }
  };
  
  QNode *front;
  QNode *rear;
  int count;
public:
  Queue<T>() {
    front = NULL;
    rear = NULL;
    count = 0;
  }
  
  bool isEmpty() const {
    return (front == NULL) ? true : false;
  }
  
  bool enQueue(const T &item) {
    if (front == NULL) {
      front = new QNode(item);
      
      rear = front;
      if (front == NULL) return false;
    }else {
      rear->next = new QNode(item);
      if (rear->next == NULL) {
        return false;
      }
      rear = rear->next;
      count++;
    }
    return true;
  }
  
  bool deQueue(T &item) {
    if (isEmpty() == true) {
      return false;
    }
    QNode *node = front;
    item = front->data;
    front = front->next;
    delete node;
    count --;
    return true;
  }
  
  bool getFront(T &item) const {
    if (isEmpty() == true) {
      return false;
    }
    item = front->data;
    return true;
  }
  
  int getCount() const {
    return count;
  }
  
};
