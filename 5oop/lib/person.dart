class Person {
  String name;
  //声明私有属性
  num _money = 100;
  num getMoney() {
    return this._money;
  }

  //声明私有方法
  void _wife() {
    print("我是 $name 的123");
  }

  Person(this.name);
}
