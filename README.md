# demos
提供了一个完整的可运行的平台包，用户可直接将此平台包拷贝至jLab实验平台中运行。<br>

## 平台包简介
1. 平台包包含3个点对点波形：AudioTransApp、ImageTransApp、MsgTransApp，分别用于传输语音、视频和报文。<br>


> ### AudioTransApp应用由以下组件组成：<br>

1）AudioTrans_Ctroller 音频压缩波形控制器组件<br>
作用：控制 AudioCodeCComp组件和 CRCComp组件<br>
2）AudioCodeCComp 音频压缩组件<br>
作用：通过压缩算法，对音频数据压缩，压缩比可调整，分别为2:1、16:5<br>
3）CRCComp CRC校验组件<br>
作用：在传输数据前添加CRC校验头，保证数据的可靠性<br>

### ImageTransApp应用由以下组件组成：<br>

1）ImageTrans_Ctroller 视频波形控制器组件<br>
作用：控制 RxTxComp组件<br>
2）RxTxComp 收发组件<br>
作用：对视频数据校验，剔除丢失数据组<br>

### MsgTransApp应用由以下组件组成：<br>

1）MsgTrans_Ctroller 报文波形控制器组件<br>
作用：控制 CRCComp组件<br>
2）CRCComp CRC校验组件<br>
作用：在传输数据前添加CRC校验头，保证数据的可靠性<br>

### 数据通信传输流程：<br>
&emsp;&emsp;语音、视频和报文三个波形工作流程是类似的，只是传输数据不同，传输流程如下：<br>
&emsp;&emsp;外部程序发送数据给应用，应用将数据发送给MHAL_Device设备，MHAL_Device设备中调用硬件驱动发送给硬件设备，进行数据处理。<br>

2. 平台包包含5个逻辑设备，对JLab实验平台上的部分硬件设备进行了抽象。<br>
3. 运行这两个波形，需要配合使用JMonitor客户端软件，JMonitor为用户操作界面软件。由于接口是SCA2.2.2标准规定的，用户也可自行开发界面软件。<br>

## 运行环境
jLab实验平台 1.0<br>

## 工具
jLab_Monitor 1.0

## 使用步骤
1. 配置平台包中的opensca.conf文件，用户需要配置的选项如下：<br>
![load picture failed](https://github.com/JFounderSDR/demos/blob/master/opensca_conf.png)<br>
2. 将平台包拷贝至JLab实验平台；<br>
3. 启动实验平台即可。<br>
