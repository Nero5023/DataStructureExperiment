//
//  main.cpp
//  ParkManage
//
//  Created by Nero Zuo on 15/11/27.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
#include "ParkingLot.cpp"
//#include "Stack.cpp"

int main(int argc, const char * argv[]) {
  ParkingLot parkingLot = ParkingLot(5, 10, 5);
  int x = 1;
  cout << "input number:\n 0: exit\n 1: car park in\n 2: only one car leave\n 3: more than on car leave"  << endl;
  cin >> x;
  while (x) {
    if (x == 1) {
      cout << "input car licene number and arrive time" << endl;
      string liceneNumber;
      double arriveTime;
      cin >> liceneNumber;
      cin >> arriveTime;
      Car car(liceneNumber, arriveTime);
      parkingLot.enter(car);
    }else {
      Car car;
      double leaveTime;
      cout << "input leave time" << endl;
      cin >> leaveTime;
      if (x == 2) {
        parkingLot.leave(car, leaveTime, false);
      }else {
        parkingLot.leave(car, leaveTime, true);
      }
      car.print();
      cout <<"Charge:" << parkingLot.chagrgeCar(car) << endl;
    }
    cout << "input number:\n 0: exit\n 1: car park in\n 2: only one car leave\n 3: more than on car leave"  << endl;
    cin >> x;
  }
  return 0;
}
