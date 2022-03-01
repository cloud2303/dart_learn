//声明类
class Person {
  String name = '章三';
  void getInfo() {
    print("我是 $name");
  }
}

void main(List<String> args) {
  //实例化
  Person p = new Person();
  //访问类中的属性
  print(p.name);
  //访问类的方法
  p.getInfo();
  //Dart中所有的内容都是对象
  // Map m = new Map();
}
