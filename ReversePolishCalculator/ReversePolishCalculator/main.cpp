//
//  main.cpp
//  ReversePolishCalculator
//
//  Created by Nero Zuo on 15/11/6.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
#include "ReversePolishCalculator.h"
using namespace std;
char get_command();
bool do_command(char command, Stack<double> &numbers);
int main(int argc, const char * argv[]) {
  ReversePolishCalculator calculator = ReversePolishCalculator();
  calculator.calaulator();
  return 0;
}

