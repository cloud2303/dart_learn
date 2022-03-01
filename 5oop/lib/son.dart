import 'father.dart';

class Son extends Father {
  // Son(String job) : super(job); //super继承父类的构造函数
  //继承命名构造函数
  Son(String job) : super.origin(job);
  @override //it do nothing ，只是一个标志just a sign
  say() {
    print("我是 刘禅,我爹是${super.name}");
  }
}
