//手机的处理器
abstract class Processor {
  String cores; //内核 2core 4core
  arch(String name); //制程 7nm 5nm
}

//手机的摄像头
abstract class Camera {
  String resolution; //分辨率：1000
  brand(String name); //品牌：三星 莱卡蔡司
}

//通过普通类实现接口
class Phone implements Processor, Camera {
  @override
  String cores;
  @override
  String resolution;
  Phone(this.cores, this.resolution);
  @override
  arch(String name) {
    print("芯片制程" + name);
  }

  @override
  brand(String name) {
    print('相机品牌' + name);
  }
}

void main(List<String> args) {
  Phone p = new Phone("4", "7nm");
  p.arch("14nm"); //芯片制程14nm
}
