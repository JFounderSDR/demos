# demos
提供了一个完整的可运行的平台包，用户可直接将此平台包拷贝至开发板中运行。<br>

## 平台包简介
平台包包含3个点对点波形：AudioTransApp、ImageTransApp、MsgTransApp，分别用于传输语音、视频和报文。<br>
平台包包含5个逻辑设备，对JLab实验平台上的部分硬件设备进行了抽象。<br>
运行这两个波形，需要配合使用JMonitor客户端软件，JMonitor为用户操作界面软件。由于接口是SCA2.2.2标准规定的，用户也可自行开发界面软件。<br>

## 运行环境
JLab实验平台 1.0<br>

## 工具
JMonitor 1.0

## 使用步骤
1. 配置平台包中的opensca.conf文件，用户需要配置的选项如下：<br>
&emsp;&emsp;FSROOT：平台包存放路径<br>
&emsp;&emsp;SDRROOT：平台包名称<br>
&emsp;&emsp;NAMING_SERVICE_ENDPOINTS：命名服务监听地址，包括IP地址和端口号，即JLab实验平台的IP地址和任一可用的端口号<br>
2. 将平台包拷贝至JLab实验平台；<br>
3. 启动实验平台即可。<br>
