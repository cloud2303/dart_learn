void main(List<String> args) {
  //必填参数

  //   String userInfo(String name) {
  //   //[int age = 0];
  //   return "你好 $name";
  // }

  // String res = userInfo('张三');
  // print(res);
  // String userInfo(String name, [dynamic age]) {
  //   //[int age = 0];
  //   return "你好 $name,年龄:$age";
  // }

  // String res = userInfo('张三', 18);
  // print(res);
  //命名参数
  String userInfo(String name, {int age = 0}) {
    //[int age = 0];
    return "你好 $name,年龄:$age";
  }

  //命名参数调用时，需要与声明时的形参保持一致
  String res = userInfo('张三', age: 18);
  print(res);
  //函数参数
}
