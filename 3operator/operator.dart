void main(List<String> args) {
  print(7 ~/ 4); //1 差1能被整除
  List list = [];
  //类型判断运算符 !
  if (list is! List) {
    print('list is List');
  } else {
    print('list is not List');
  } //list is not List

  //避免为空运算符
  print(1 ?? 3); //1
  print(null ?? 3); //3

  var foo;
  print(foo ?? 0); //0
  foo = 6;
  print(foo ?? 0); //6

  var a;
  a ??= 3; //a为null赋值为3
  print(a); //3

  //条件属性运算符 ?
  var m = new Map();
  print(m.length); //0
  var obj;
  print(obj?.length); //null

  //级联运算符
  // Set s = new Set();
  // s.add(1);
  // s.add(2);
  // s.remove(2);
  // s.add(3);
  // print(s);
  Set s = new Set();
  s
    ..add('a')
    ..add('b')
    ..add('c')
    ..remove('b');
  print(s); //{a, c}
}
