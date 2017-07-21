# OC-Swift
OC和Swift混编
###前言
Swift已推出数年，与Objective-C相比Swift的语言机制及使用简易程度上更接地气，大大降低了iOS入门门槛。当然这对新入行的童鞋们来讲，的确算是福音，但对于整个iOS编程从业者来讲，真真是，曾几何时“高大上”，转瞬之间“矮矬穷”。再加上培训班横行，批量批发之下，iOS再也看不到当年的辉煌。
往事不再提，事还是要做滴。iOS10推出后，紧跟着Xcode8也推送了更新，细心者会发现，Xcode8下iOS版本最低适配已变为iOS8.0，加上Swift版本趋于稳定，从某种意义上讲，Swift的时代正式开启，替代Objective-C怕也只是时间问题。当然，在这之前，我们也应做好准备。今年越来的越多的公司，也开始了Swift和Objective-C混编。
##Swift项目
####1. 桥接文件：项目名-Bridging-Header.h

![屏幕快照 2017-07-21 下午4.02.07.png](http://upload-images.jianshu.io/upload_images/1243891-773caa4ce5cecc44.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

Swift项目首次创建OC类时会提醒是否创建桥接文件，桥接文件的名是：项目名-Bridging-Header.h，这是Xcode会自己配置好桥接文件。如果
桥接文件删除或更改项目名时，我们可以手动创建，只要配置好路径就可以了
配置文件路径：Targets-->Build Settings-->Swift Compiler - General-->Objective-C Bridging Header

![屏幕快照 2017-07-21 下午4.02.36.png](http://upload-images.jianshu.io/upload_images/1243891-f0b23359e59a02f9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

####2. 在桥接文件中添加需要调用的OC类，#import "LCHelper.h"

![屏幕快照 2017-07-21 下午4.06.17.png](http://upload-images.jianshu.io/upload_images/1243891-aecf265cc7125c60.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

####3. 在Swift文件中就可以正常调用OC的属性和方法

![屏幕快照 2017-07-21 下午4.06.30.png](http://upload-images.jianshu.io/upload_images/1243891-bee1bc8653c9126e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##OC项目
###1.桥接文件
OC项目首次创建Swift文件时会提醒是否创建桥接文件，桥接文件的名是：项目名-Bridging-Header.h，这是Xcode会自己配置好桥接文件。如果
桥接文件删除或更改项目名时，我们可以手动创建，只要配置好路径就可以了
配置文件路径：Targets-->Build Settings-->Swift Compiler - General-->Objective-C Bridging Header

![屏幕快照 2017-07-21 下午3.45.41.png](http://upload-images.jianshu.io/upload_images/1243891-e8a6a4f55a1c482f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###2.创建Swift文件

![屏幕快照 2017-07-21 下午3.56.28.png](http://upload-images.jianshu.io/upload_images/1243891-430a64ebd4f9e4d9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###3.引用#import "项目名-Swift.h"文件
这个文件在创建桥接文件的时候生成的一个隐藏文件



![屏幕快照 2017-07-21 下午3.56.54.png](http://upload-images.jianshu.io/upload_images/1243891-4c3602115ec2b299.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

可以通过Command+进入文件，在文件的下面会有这样几行代码：

![屏幕快照 2017-07-21 下午3.56.11.png](http://upload-images.jianshu.io/upload_images/1243891-4e807194ae0a5c5c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这样OC项目就可以调用Swift文件了

[demo：https://github.com/tianzhilan0/OC-Swift](https://github.com/tianzhilan0/OC-Swift)
