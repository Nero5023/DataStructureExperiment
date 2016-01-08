//
//  main.cpp
//  StringMatching
//
//  Created by Nero Zuo on 15/11/13.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
#include "Queue.cpp"
#include <String>

void configureInput(string& str, Queue<char>& lQueue, Queue<char>& rQueue);
char checkLength(Queue<char>& lQueue, Queue<char>& rQueue);
char checkIsSame(Queue<char> lQueue, Queue<char> rQueue);

int main(int argc, const char * argv[]) {
  string str;
  cout << "Please input a string" << endl;
  cin >> str;
  Queue<char> lQueue = Queue<char>();
  Queue<char> rQueue = Queue<char>();
  configureInput(str, lQueue, rQueue);
  char result1 = checkLength(lQueue, rQueue);
  char result2 = checkIsSame(lQueue, rQueue);
  cout << "Result:" << result1 << "," << result2 << endl;
}

void configureInput(string& str, Queue<char>& lQueue, Queue<char>& rQueue) {
  bool hasChecked = false;
  for (int i = 0; i < str.length(); i++) {
    if (hasChecked == false && str[i] == ':') {
      hasChecked = true;
      continue;
    }
    if (!hasChecked) {
      lQueue.append(str[i]);
    }else {
      rQueue.append(str[i]);
    }
  }
}


char checkLength(Queue<char>& lQueue, Queue<char>& rQueue) {
  if (rQueue.getCount() == 0) {
    return 'N';
  }
  if (lQueue.getCount() < rQueue.getCount()) {
    return 'R';
  }else if (lQueue.getCount() > rQueue.getCount()) {
    return 'L';
  }else {
    return 'D';
  }
}

char checkIsSame(Queue<char> lQueue, Queue<char> rQueue) {
  if (lQueue.getCount() != rQueue.getCount()) {
    return '\0';
  }
  
  while (!lQueue.isEmpty()) {
    if (lQueue.serve() != rQueue.serve()) {
      return '\0';
    }
  }
  return 'S';
}