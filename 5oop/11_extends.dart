import "lib/father.dart";
import 'lib/son.dart';

void main(List<String> args) {
  var f = new Father("皇帝");
  print(f.money); //10000
  var s = new Son("小皇帝");

  print(s.money); //10000
  s.say(); //我是 刘禅,我爹是刘备
}
