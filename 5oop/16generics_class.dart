class CommonClass {
  Set s = new Set<int>();
  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

//范型类
class GenericsClass<T> {
  Set s = new Set<T>();
  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main() {
  CommonClass c = new CommonClass();
  c.add(1);
  // c.add("2");//can't
  c.add(2);
  c.info(); //{1, 2}

  //实例化范型类
  GenericsClass g = new GenericsClass<int>();
  g.add(1);
  // g.add("2");//type 'String' is not a subtype of type 'int' of 'value'
  g.add(2);
  g.info(); //{1, 2}
  GenericsClass g1 = new GenericsClass<String>();
  g1.add("hello");
  // g.add("2");//type 'String' is not a subtype of type 'int' of 'value'
  g1.add("world");
  g1.info(); //{hello, world}
}
