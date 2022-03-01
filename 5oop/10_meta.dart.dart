class Phone {
  //旧版本废弃方法，将来会被移除
  @deprecated
  activate() {
    turnOn();
  }

  turnOn() {
    print("开机");
  }
}

void main(List<String> args) {
  var p = new Phone();
  p.activate();
}
