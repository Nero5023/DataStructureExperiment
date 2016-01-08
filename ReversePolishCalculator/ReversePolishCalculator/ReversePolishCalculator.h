//
//  ReversePolishCalculator.h
//  ReversePolishCalculator
//
//  Created by Nero Zuo on 15/11/6.
//  Copyright © 2015年 Nero. All rights reserved.
//

#ifndef ReversePolishCalculator_h
#define ReversePolishCalculator_h

#include <iostream>
#include "Stack.cpp"
using namespace std;
class ReversePolishCalculator {
  Stack<double> stack;
  char get_command();
  bool do_command(char command);
public:
  
  ReversePolishCalculator();
  void calaulator();
};

#endif /* ReversePolishCalculator_h */
