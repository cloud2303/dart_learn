void main(List<String> args) {
  int hello = 1;
  double aa = 1;
  num vv = 222.1222;

  //四舍五入

  print(3.134.round()); //取整
  print(3.136.toStringAsFixed(2)); //四舍六入
  //取余
  print(10.remainder(4)); //返回2
  //返回最大公约数
  print(12.gcd(8)); //4
  //科学计数法 小数点后2位
  print(1000.toStringAsExponential(2)); //1.00e+3
}
