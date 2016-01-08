//
//  Car.cpp
//  ParkManage
//
//  Created by Nero Zuo on 15/11/27.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
#include <string>

using namespace std;

class Car {
  double waitTime;
  double parkTime;
  double arriveTime;
  double leaveTime;
  string licenceNumber;
public:
  Car() {
    
  }
  
  Car(string &licence, double arrive) {
    licenceNumber = licence;
    arriveTime = arrive;
  }
  
  double getWaitTime() {
    return waitTime;
  }
  double getParkTime() {
    return leaveTime - arriveTime - waitTime;
  }
  void setWaitTime(double anotherLeaveTime) {
    waitTime = anotherLeaveTime - arriveTime;
  }
  void setLeaveTime(double leave) {
    leaveTime = leave;
  }
  
  void print() {
    cout << licenceNumber + " arrive time:" << arriveTime << " leave time:" << leaveTime << endl;
  }
  
};

