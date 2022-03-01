class Person {
  static String name = "章三";
  int age = 18;

  static printInfo() {
    // print(this.name);//不能通过this关键字访问静态属性
    print(name);
    // print(age);//静态方法中不能访问非静态属性

    // printUserInfo()//can't access静态方法不能访问非静态方法
  }

  //非静态方法可以访问静态属性
  printUserInfo() {
    print(name);
    printInfo(); //非静态方法可以访问静态方法
  }
}

void main(List<String> args) {
  //静态成员，可以通过类名称直接访问
  print(Person.name);
  print(Person.printInfo()); //null
  // print(Person.printUserInfo())//can't access不能通过类名称直接访问非静态方法
  var p = new Person();
  p.printUserInfo(); //章三
}
