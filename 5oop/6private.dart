import 'lib/person.dart';

void main(List<String> args) {
  var p = new Person("章三");
  print(p.name); //章三
  //访问私有属性
  // print(p._money); //can't access
  print(p.getMoney()); //100
  //访问私有方法
  // print(p._wife)//不能访问
}
