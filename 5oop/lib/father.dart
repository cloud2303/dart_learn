class Father {
  String name = '刘备';
  num money = 10000;
  String job;
  Father(this.job);
  Father.origin(this.job);
  say() {
    print("我是$name");
  }
}
