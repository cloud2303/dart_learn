class Rect {
  int height;
  int width;

  //初始化列表
  Rect()
      : height = 4,
        width = 2 {
    print('${this.height}--${this.width}');
  }

  //   Rect([int height = 2, int width = 10]) {
  //   this.height = height;
  //   this.width = width;
  //   print('${this.height}--${this.width}');
  // }

  // Rect({int height = 2, int width = 10}) {
  //   this.height = height;
  //   this.width = width;
  //   print('${this.height}--${this.width}');
  // }
}

class Point {
  double x, y, z;
  Point(this.x, this.y, this.z);
  //初始化列表的特殊用法(重定向构造函数)
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main(List<String> args) {
  var r = new Rect();
  //实例化点
  var p = new Point(1, 23, 1);
  var p1 = new Point.twoD(1, 5);
}