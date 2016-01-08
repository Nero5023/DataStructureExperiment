//
//  ParkingLot.cpp
//  ParkManage
//
//  Created by Nero Zuo on 15/11/27.
//  Copyright © 2015年 Nero. All rights reserved.
//

#include <iostream>
#include "Queue.cpp"
#include "Stack.cpp"
#include "Car.cpp"

class ParkingLot {
  double waitCharge;
  double parkCharge;
  int maxSize;
  Queue<Car> waitQueue;
  Stack<Car> park;
public:

  ParkingLot(double wCharge, double pCharge, int size){
    waitCharge = wCharge;
    parkCharge = pCharge;
    maxSize = size;
    waitQueue = Queue<Car>();
    park = Stack<Car>();
  }
  
  double chagrgeCar(Car &car) {
    return (car.getParkTime() * parkCharge + car.getWaitTime() * waitCharge);
  }
  
  bool enter(Car &car) {
    if (park.getCount() < maxSize) {
      park.push(car);
      return true;
    }
    if (waitQueue.enQueue(car)) {
      return true;
    }else {
      return false;
    }
    
  }
  
  bool leave(Car &car, double leaveTime, bool isNextLeave) {
    if (park.isEmpty()) {
      return false;
    }
    
    car = park.pop();
    car.setLeaveTime(leaveTime);
    if (!isNextLeave && !waitQueue.isEmpty()){
      Car waitCar;
      waitQueue.deQueue(waitCar);
      waitCar.setWaitTime(leaveTime);
    }
    return true;
  }
  
};


