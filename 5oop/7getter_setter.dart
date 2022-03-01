class Circle {
  final double PI = 3.1415;
  num r;

  Circle(this.r);
  //使用get声明的方法，不能有小括号
  num get area {
    return this.PI * this.r * this.r;
  }

  void set setR(value) {
    this.r = value;
  }
}

void main() {
  var c = new Circle(10);
  print(c.area);
  //通过setter修改属性
  c.setR = 20;
  print(c.area);
}
