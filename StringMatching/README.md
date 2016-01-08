# <div align="center">实验三 字符串匹配 </div>
## 1.实验目的及要求
通过实验进一步理解和掌握程序设计的基本原理和方法

## 2.实验内容

## 3.需求分析
* 建立Queue，利用queue里实现字符串匹配

## 4.概念设计
* Queue利用顺序存储实现，利用循环，溢出就返回错误
* 利用队列来实现功能

## 5.详细设计
### Queue
#### Class name:
范型T
Queue
####  Property:
int count; 记录当前队列元素数  
int front;头指针  
int rear;尾指针  
T entry[kMaxSize];存储队列中元素

#### Public Methon:
	Queue()
初始化队列
___
	bool isEmpty() const
判读队列是否为空
___
	 void append(T &item)
入队列，若溢出显示错误
___
	T& serve()
出队列，返回改元素，若溢出显示错误
___
	T& retrive()
查看队头元素，返回该元素
___
	int getCount()
返回队列中元素个数

### Main函数
	void configureInput(string& str, Queue<char>& lQueue, Queue<char>& rQueue)
处理用户输入，将对应的输入放入队列中
___
	char checkLength(Queue<char>& lQueue, Queue<char>& rQueue)
检查两个队列的长度，根据关系返回结果
___
	char checkIsSame(Queue<char> lQueue, Queue<char> rQueue)
检查俩个队列中元素对应是否一样，返回结果
___
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
	
## 6.调试分析
#### input:
Hello,Wrold!:Hello,C++!
#### output:
Result:L

___

#### input:
Hello,C++!:Hello,Wor!
### output:
Result:D

___
#### input:
Hello,World!:Hello,World!
#### output:
Result:D,S

## 7.测试结果
根据测试程序运行结果与预期一致

## 8.用户手册
输入的两个字符串以`:`分隔
## 9.附录


