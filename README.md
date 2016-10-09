# Introduction to Embedded Systems(嵌入式系统导论)
## DOL Description(DOL 框架描述)
### Distributed Operation Layer(分布式操作层)
The distributed operation layer (DOL) is a software development framework
to program parallel applications. The DOL allows to specify applications based
on the Kahn process network model of computation and features a simulation
engine based on SystemC. Moreover, the DOL provides an XML-based
specification format to describe the implementation of a parallel application
on a multi-processor systems, including binding and mapping.
### DOL Sketch Map(分布式操作层示意图)
![](https://ooo.0o0.ooo/2016/10/09/57fa73f5650da.png)
## How to install(DOL 安装笔记)
1. **安装必要的环境**
	* $ sudo apt-get update
	* $ sudo apt-get install ant
	* $ sudo apt-get install openjdk-7-jdk
	* $ sudo apt-get install unzip  
	![](https://ooo.0o0.ooo/2016/10/09/57fa742a70296.png)
* **下载文件**
	* $ sudo wget http://www.accellera.org/images/downloads/standards/systemc/systemc-2.3.1.tgz
	* $ sudo wget http://www.tik.ee.ethz.ch/~shapes/downloads/dol_ethz.zip
	* 或直接从这些地址下载并储存即可(本次实验中被放入主文件夹(home)中)  
	![](https://ooo.0o0.ooo/2016/10/09/57fa746bd783e.png)
* **解压文件**
	* 新建dol的文件夹  
	$ sudo mkdir dol  
	![](https://ooo.0o0.ooo/2016/10/09/57fa74951d33b.png)
	* 将dolethz.zip解压到 dol文件夹中  
	$ sudo unzip dol_ethz.zip -d dol
	* 解压systemc  
	$ sudo tar -zxvf systemc-2.3.1.tgz  
	![](https://ooo.0o0.ooo/2016/10/09/57fa74a9e4625.png)
* **编译systemc**
	* 解压后进入systemc-2.3.1的目录下  
	$ cd systemc-2.3.1
	* 新建一个临时文件夹objdir  
	$ sudo mkdir objdir
	* 进入该文件夹objdir  
	$ cd objdir
	* 运行configure(能根据系统的环境设置一下参数,用于编译)  
	$ sudo ../configure CXX=g++ --disable-async-updates  
	![](https://ooo.0o0.ooo/2016/10/09/57fa74e1084fd.png)  
	![](https://ooo.0o0.ooo/2016/10/09/57fa74f284dfc.png)
	* 编译  
	$ sudo make install
	* 编译完后文件目录如下  
	$ cd ..; ls  
	![](https://ooo.0o0.ooo/2016/10/09/57fa750456820.png)
	* 记录当前的工作路径  
	$ sudo pwd  
	得到结果为:/home/csc/systemc-2.3.1
* **编译dol**
	* 进入刚刚dol的文件夹
	* 修改build_zip.xml文件
	* 找到下面这段话,就是说上面编译的systemc位置在哪里  
	`<property name="systemc.inc" value="YYY/include"/>`  
	`<property name="systemc.lib" value="YYY/lib-linux/libsystemc.a"/>`  
	把YYY改成pwd的结果，由于我使用的系统是64位的Ubuntu，因此lib-linux要改成lib-linux64  
	而且由于之前安装需要权限无法修改，需要对dol文件夹取得权限$ sudo chomd 777 dol
	![](https://ooo.0o0.ooo/2016/10/09/57fa75ce262fe.png)
	* 编译  
	$ sudo ant -f build_zip.xml all  
	![](https://ooo.0o0.ooo/2016/10/09/57fa755531c15.png)
	* 接着可以试试运行第一个例子  
	进入build/bin/mian路径下  
	$ cd build/bin/main  
	然后运行第一个例子  
	$ ant -f runexample.xml -Dnumber=1  
	![](https://ooo.0o0.ooo/2016/10/09/57fa758f74474.png)



## Experimental experience(实验感想/实验心得)
**通过本次实验，配置了DOL的环境，其中遇到了一些问题，**
**例如gcc版本不足、权限不足等奇怪的问题，而且一开始语言支持为中文，因此导致无法得到正确的结果，**
**后来改为英文后就可以得到正确结果了。**



