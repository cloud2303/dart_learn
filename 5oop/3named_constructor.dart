class Point {
  num x, y;
  Point(this.x, this.y);
  //命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }
  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  //默认
  Point p1 = new Point.origin();
  print(p1.x);
  //手动设置
  Point p2 = new Point.fromJson(x: 1, y: 2);
  print(p2.x);
}
