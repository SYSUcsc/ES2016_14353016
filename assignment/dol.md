# Lab2: DOL实例分析&编程
* 修改代码后的结果
	* 输出结果
		1. Example2  
		![](".//example2.png")
		2. Example1  
		![](".//example1.png")
	* .dot文件
		1. Example2  
		![](".//example2_code1.png")  
		![](".//example2_code2.png")
		2. Example1  
		![](".//example2.png")

* 具体如何修改的解释
	* 修改example2,让3个square模块变成2个  
	可以从code中看到iterator中是从variable="i"到range="N"，因此只需要改变N的值，而N在一开始就被定义为了3，改成2即可
	* 修改example1,使其输出3次方数  
	可以从code中看到i=i\*i，很明显是平方数，只需要改成i=i\*i\*i即可变为立方数

* 实验感想
	* 本次实验比较简单，了解了生产者、模块、消费者之间的关系及其运行过程。/src文件夹内包含2种文件:\*.c,与对应的\*.h,就是实现的模块,就是\*.dot的
框框的功能描述。./example\*.xml 里面定义了模块与模块之间是怎么连接的。
