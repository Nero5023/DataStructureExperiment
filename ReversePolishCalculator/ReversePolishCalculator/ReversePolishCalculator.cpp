//
//  ReversePolishCalculator.cpp
//  ReversePolishCalculator
//
//  Created by Nero Zuo on 15/11/6.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include "ReversePolishCalculator.h"
ReversePolishCalculator:: ReversePolishCalculator() {
  stack = Stack<double>();
}

char ReversePolishCalculator::get_command() {
  char command = '\0';
  bool wait = true;
  cout << "Select command and press <Entry>:" << endl;
  while (wait) {
    cin >> command;
    command = tolower(command);
    if (command == '?' || command == '=' || command == '+' || command == '-'
        || command == '*' || command == '/'  || command == 'q') {
      wait = false;
    }else {
      cout << "Please enter a vaild command:" << endl << "[?] push to stack [=] print top" << endl;
      cout << "[+][-][*][/] are arithmetic operations" << endl << "[q] to quit" << endl;
    }
  }
  return command;
}


bool ReversePolishCalculator::do_command(char command) {
  double num1 = 0;
  double num2 = 0;
  switch (command) {
    case '?':
      cout << "Enter a real number." << endl;
      cin >> num1;
      stack.push(num1);
      break;
    case '=':
      cout << stack.top() << endl;
      break;
    case '+':
      num2 = stack.pop();
      num1 = stack.pop();
      stack.push(num1 + num2);
      break;
    case '-':
      num2 = stack.pop();
      num1 = stack.pop();
      stack.push(num1 - num2);
      break;
    case '*':
      num2 = stack.pop();
      num1 = stack.pop();
      stack.push(num1 * num2);
      break;
    case '/':
      num2 = stack.pop();
      num1 = stack.pop();
      stack.push(num1 / num2);
      break;
    case 'q':
      cout << "Calculator finished.\n";
      return false;
    default:
      break;
  }
  return true;
}


void ReversePolishCalculator::calaulator() {
  while (do_command(get_command()));
}