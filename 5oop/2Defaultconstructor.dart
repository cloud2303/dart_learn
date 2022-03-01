// class Point {
//   // num x;
//   // num y;
//   num x, y;
//   //声明普通构造函数
//   Point() {
//     print('默认构造函数实例化时第一个被调用的函数');
//     //this可以省略
//     // x = 0;
//     // y = 0;
//
//   }
// }
class Point {
  num x, y;
  Point(num x, num y) {
    //当命名指向有歧义时，this不能省略 当参数和变量都叫x的时候，你得用this区分
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  var p = new Point(1, 2);
  print(p.x);
}
