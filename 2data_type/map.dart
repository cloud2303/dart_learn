void main(List<String> args) {
  var person = {'name': "张三", 'age': 20};
  print(person); //{name: 张三, age: 20}

  //通过构造函数
  var p = new Map();
  p['name'] = 'lisi';
  p['age'] = 22;
  print(p); //{name: lisi, age: 22}

  //访问属性
  print(p['name']); //lisi
  print(p['aaa']); //null
  //判断Map中的key是否存在
  print(p.containsKey("aaa")); //false
  print(p.containsKey("name")); //true
  //判断Map中的values是否存在
  print(p.containsValue("bbb")); //false

  //赋值
  //如果key 不存在我们才赋值(如果key存在，则不赋值)
  p.putIfAbsent('gender', () => '男'); //{name: lisi, age: 22, gender: 男}
  print(p);
  p.putIfAbsent('gender', () => '女'); //{name: lisi, age: 22, gender: 男}
  print(p);
  //获取Map中所有的key
  print(p.keys); //(name, age, gender)
  //获取Map中所有的values
  print(p.values); //(lisi, 22, 男)

//根据条件进行删除
  p.removeWhere((key, value) => key == "gender");
  print(p); //{name: lisi, age: 22}
}
