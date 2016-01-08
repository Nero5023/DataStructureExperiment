# <div align="center">实验三 逆波兰计算器 </div>
## 1.实验目的及要求
通过实验进一步理解和掌握程序设计的基本原理和方法

## 2.实验内容

## 3.需求分析
* 建立Stack，利用stack里实现逆波兰器

## 4.概念设计
* Stack利用顺序存储实现，溢出就返回错误
* ReversePolishCalculator类来实现逆波兰器

## 5.详细设计
### Stack
#### Class name：
范型T
Stack
#### Property:
* int count; 记录当前栈中元素个数
* T entrys[kMaxStack]; 存储栈中元素

#### Public Method:
	 Stack()
初始化stack
___
	bool empty() const
判断stack是否为空
___
	T pop()
pop栈顶元素，返回该元素，若溢出则显示错误
___
	T pop()
返回栈顶元素，（不删除）
___
	void push(T entry)
将`entry`压入栈中，如果溢出显示错误

### 逆波兰ReversePolishCalculator
#### Class name：
ReversePolishCalculator
#### Property:
Stack< double > stack; 记录输入数据的stack
#### Private Method:
	char get_command();
接收用户输入数据,若要输入数，先输入‘？’
___
	bool do_command(char command);
处理用户输入

#### Public Methond:

	ReversePolishCalculator();
初始化逆波兰器
___
	void calaulator();
进行逆波兰计算

### Main 函数
	using namespace std;
	char get_command();
	bool do_command(char command, Stack<double> &numbers);
	int main(int argc, const char * argv[]) {
  		ReversePolishCalculator calculator = ReversePolishCalculator();
  		calculator.calaulator();
  		return 0;
	}



## 6.调试分析
#### 计算：
10 20 +  
即为10 + 20

#### console:
	Select command and press <Entry>:
	?
	Enter a real number.
	20
	Select command and press <Entry>:
	?10
	Enter a real number.
	Select command and press <Entry>:
	+
	Select command and press <Entry>:
	=
	30
	
#### 计算：
11 21 4 9 - * +
11 + 21 * (4 - 9)

#### console:
	Select command and press <Entry>:
	?
	Enter a real number.
	11
	Select command and press <Entry>:
	?
	Enter a real number.
	21
	Select command and press <Entry>:
	?
	Enter a real number.
	4
	Select command and press <Entry>:
	?
	Enter a real number.
	9
	Select command and press <Entry>:
	-
	Select command and press <Entry>:
	*
	Select command and press <Entry>:
	+
	Select command and press <Entry>:
	=
	-94
	
## 7.测试结果
根据测试程序运行结果与预期一致

## 8.用户手册
输入数前一定要先输入`？`
输入	`=`输出结果

## 9.附录
GitHub:<https://github.com/Nero5023/DataStructureExperiment>
