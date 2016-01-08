# <div align="center">实验五 停车场管理 </div>
## 1.实验目的及要求
通过实验进一步理解和掌握程序设计的基本原理和方法
## 2.实验内容

## 3.需求分析
* 建立栈控制在停车场的车
* 建立队列控制在过道上的车
* 建立ParkLot来控制整个停车场
* 建立Car类来记录车辆信息

## 4.概念设计
* 队列用链式结构实现，栈用顺序结构实现

## 5.详细设计
### Queue
* 链式存储  

### Stack
* 顺序存储

### Car
#### Class Name:
Car

#### Function:
存储车辆信息

####  Property:
double waitTime;  在过道等待时间  
double parkTime;  在停车场停车时间
double arriveTime;  到达时间  
double leaveTime;  离开时间  
string licenceNumber;  车牌号  

#### Public Methods:
	Car(string &licence, double arrive)
构造函数，初始化车牌号和到达时间
___
	double getWaitTime()
waiterTime 的 getter
___
	double getParkTime()
parkTime 的getter
计算方法：leaveTime - arriveTime - waitTime
___ 
	void setWaitTime(double anotherLeaveTime)
设置waitTime: waitTime = anotherLeaveTime - arriveTime
___
	void setLeaveTime(double leave)
leaveTime的setter

### ParkingLot
#### ClassName:
ParkingLot

#### Function:
管理停车场  

#### Methods:
	ParkingLot(double wCharge, double pCharge, int size)

停车场初始化
___
	double chagrgeCar(Car &car)

车辆缴费
___
	bool enter(Car &car)
车辆进入停车场
___
	bool leave(Car &car, double leaveTime, bool isNextLeave)
车辆离开停车场


### Car
### ClassName:
Car
#### Property:
	double waitTime;  		//等待时间
	double parkTime;  		//停车时间
	double arriveTime; 		//到达时间
	double leaveTime;		//离开时间
	string licenceNumber;	//车牌号

#### Methods:
	
	Car(string &licence, double arrive)
车辆初始化
___
	double getWaitTime()
获取等待时间
___
	double getParkTime()
获取停车时间
计算公式leaveTime - arriveTime - waitTime
____
	void setWaitTime(double anotherLeaveTime)
	void setLeaveTime(double leave)
设置waitTime 和 leaveTme
其中waitTime = anotherLeaveTime - arriveTime


除此之外还有Queue, 和 Stack来辅助

-------------
在main函数中写入程序，实现如下功能

	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	
## 6.调试分析
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	1
	input car licene number and arrive time
	1
	1
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	1
	input car licene number and arrive time
	2
	2
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	1
	input car licene number and arrive time
	3
	3
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	1
	input car licene number and arrive time
	4
	4
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	1
	input car licene number and arrive time
	5
	5
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	1
	input car licene number and arrive time
	6
	6
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	2
	input leave time
	7
	5 arrive time:5 leave time:7
	Charge:20
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	2
	input leave time
	8
	4 arrive time:4 leave time:8
	Charge:40
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	2
	input leave time
	9
	3 arrive time:3 leave time:9
	Charge:60
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	3
	input leave time
	10
	2 arrive time:2 leave time:10
	Charge:80
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	2
	input leave time
	10
	1 arrive time:1 leave time:10
	Charge:90
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
	2
	input leave time
	11
	 arrive time:1 leave time:10
	Charge:90
	input number:
	 0: exit
	 1: car park in
	 2: only one car leave
	 3: more than on car leave
## 7.测试结果
根据测试程序运行结果与预期一致

## 8.用户手册
本程序的时间是以十进制来表示的，以小时为单位，且支持一天内的时间，若想输入第二天的就要加24小时。输入的停车时间，离开时间需要时递增有序的。

## 9.附录
GitHub:<https://github.com/Nero5023/DataStructureExperiment>