# Lab5 配置Robot operation system(ROS)
Robot operation system，一套框架，底层提供硬件驱动，软件层面支持通用的文件格式，用于仿真
## 安装过程
1. 配置Ubuntu软件库
2. 设置编辑源列表  
	`sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'`
3. 设置密钥  
	`sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116`
4. 安装  
	在步骤2和3完毕后执行  
	首先，确保Debian软件包索引是最新的  
	`sudo apt-get update`  
	安装Desktop-Full  
	`sudo apt-get install ros-jade-desktop-full`  
	下载Individual Package  
	`sudo apt-get install ros-jade-PACKAGE`  
	`sudo apt-get install ros-jade-slam-gmapping`  
	寻找可用的包  
	`apt-cache search ros-jade`
5. 初始化rosdep  
	`sudo rosdep init`  
	`rosdep update`
6. 配置环境
	`echo "source /opt/ros/jade/setup.bash" >> ~/.bashrc`  
	`source ~/.bashrc`  
	`source /opt/ros/jade/setup.bash`
7. 安装rosinstall  
	`sudo apt-get install python-rosinstall`  

至此环境配置完毕  
通过查看环境变量可知配置成功  
![](https://ooo.0o0.ooo/2016/11/08/58218c30e8fc9.png)
##实验感想
本次实验只是配置环境，基本就是复制粘贴，没什么特别的感想。

