class Point {
  num x, y;
  Point(this.x, this.y);
}

class ImmutablePoint {
  //属性必须通过final声明
  final num x;
  final num y;
  //常量构造函数必须通过const声明,不能有函数体
  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);
  print(p1 == p2); //false
  //常量构造函数 可以当做普通构造函数使用
  var p3 = new ImmutablePoint(1, 2);
  var p4 = new ImmutablePoint(1, 2);
  print(p3 == p4); //false
  var p5 = const ImmutablePoint(1, 2);
  var p6 = const ImmutablePoint(1, 2);
  print(p5 == p6); //true
}
