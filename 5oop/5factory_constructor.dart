class Person {
  String name;
  static Person instance;
  factory Person([String name = '刘备']) {
    //工厂构造函数中，不能使用this关键字
    if (Person.instance == null) {
      Person.instance = new Person.newSelf(name);
    }
    return Person.instance;
  }
  //命名构造函数
  Person.newSelf(this.name);
}

void main(List<String> args) {
  Person p1 = new Person("关羽");
  print(p1.name); //关羽
  Person p2 = new Person("张飞");
  print(p2.name); //关羽
  print(p1 == p2); //true
}
