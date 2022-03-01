abstract class Phone {
  //声明抽象方法
  void processor(); //手机的处理器
  void camera(); //手机的摄像头
  info() {
    print("this is a normal phone father");
  }
}

class XiaoMi extends Phone {
  //普通类继承了抽象类，就必须啊实现抽象类中所有的抽象方法
  @override
  void processor() {
    // TODO: implement processor
    print("998");
  }

  @override
  void camera() {
    // TODO: implement camera
    print("camera");
  }
  // void aaa();//普通类中不能有抽象方法
}

void main(List<String> args) {
  //抽象类不能被实例化
  //var p1 = new Phone()

  XiaoMi m = new XiaoMi();
  m.processor(); //998
  m.camera(); //camera
  m.info(); //this is a normal phone father
}
