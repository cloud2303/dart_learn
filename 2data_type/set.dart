void main(List<String> args) {
  //字面量
  var nums = <int>{1, 2, 3}; //set
  print(nums); //{1, 2, 3}

  //构造函数
  var fruits = new Set();
  fruits.add("香蕉");
  fruits.add("苹果");
  fruits.add("橘子");
  print(fruits); //{香蕉, 苹果, 橘子}
  print(fruits.toList()); //[香蕉, 苹果, 橘子]

  List myNums = [1, 2, 3, 4, 5, 5, 5, 5, 5];
  print(myNums.toSet()); //{1, 2, 3, 4, 5}
  //集合特有的操作
  var caocao = new Set();
  caocao.addAll(['张辽', '关羽']);
  var liubei = new Set();
  liubei.addAll(["关羽", "张飞"]);

  //求交集
  print(caocao.intersection(liubei)); //{关羽}
  //求并集
  print(caocao.union(liubei)); //{张辽, 关羽, 张飞}
  //求差集
  print(caocao.difference(liubei)); //{张辽}
  //返回第一个元素
  print(caocao.first); //张辽
  //返回最后一个元素
  print(caocao.last); //关羽
  //集合不能通过下标取值
  // print(caocao[1]);
  //The operator '[]' isn't defined for the type 'Set<dynamic>'.
}
