# iOS-runtime
runtime简称运行时，就是系统在运行时候的一些机制，其中主要是消息机制
## 1.动态时语言
        消息只有到运行时才会和函数实现绑定起来，而不像c语言一样按照编译好的逻辑一
    成不变的执行。也就是说，编译阶段只是确定了要像A对象发送B消息，但是却没有真正
    发送，真正发送是要等到运行的时候进行。因此，编译阶段完全不知道B方法的具体实现，
    甚至该方法到底有没有实现也不知道。
## 2.Objective-C runtime
        Objective-C的Runtime是一个运行时库，它是一个主要使用C和汇编写的库，为C添加
    了面向对象的能力，并创造了Objective-C，这就是说它在类信息中被加载，完成所有的
    的方法分发，方法转发等等。Objective-C runtime创建了所有需要的结构体，让Objecti
    ve-C的面向对象编程变为可能。
        Objective-C Runtime好比Objective-C的操作系统，Objective-C基于Runtime来工作，
    因此，Runtime是Objective-C的基础，灵魂。
