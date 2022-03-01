void main(List<String> args) {
  //字面量
  List li = ['a', 'b', 'c'];
  print(li);
  //限定类型
  List l2 = <int>[1, 2, 3];
  print(l2);
  var l3 = new List.empty(growable: true); //设置可成长
  l3.add(1);
  print(l3);
  var l4 = new List.filled(3, 2);
  print(l4); //222
  var l5 = [...l4];
  print(l5); //222
  var l6;
  var l7 = [7, ...?l6]; //加?先判断一下存在再加
  print(l7);
  //返回列表的长度
  print(li.length);
  //列表的反转
  print(li.reversed); //(c, b, a)可迭代，但不是列表
  print(li.reversed.toList()); //反转后变成列表 [c, b, a]
  //添加元素
  l3.addAll([3, 4, 5]);
  print(l3); //[1, 3, 4, 5]
  //删除元素
  l3.remove(4);
  print(l3); //[1, 3, 5]
  //去除指定下标元素
  l3.remove(1);
  print(l3); //[3, 5]
  //在指定的位置添加元素
  l3.insert(1, 2); //第二个位置添加2
  print(l3); //[3, 2, 5]
  //清空
  l3.clear();
  print(l3.length); //0
  //合并元素
  List words = ['hello', 'world'];
  print(words.join("-")); //hello-world
}
