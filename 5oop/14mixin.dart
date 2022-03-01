// class MixinA  extends Father{ //用作混入的类不能继承，除了Object
// class MixinA extends Object {
class MixinA {
  String name = "MixinA";
  void printA() {
    print('A');
  }

  void run() {
    print("A is RUnning");
  }
}

mixin MixinB {
  String name = "MixinB";
  void printB() {
    print('b');
  }

  void run() {
    print("B is RUnning");
  }
}

class MyClass with MixinA, MixinB {}

void main(List<String> args) {
  var c = new MyClass();
  c.printA(); //A
  c.printB(); //b

  //后引入的混入会覆盖之前引入的混入中重复的内容
  print(c.name); //MixinB
  c.run(); //B is RUnning
}
