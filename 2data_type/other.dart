void main(List<String> args) {
  var str = "😊";
  print(str);
  print(str.length); //UTF-16  2
  print(str.runes.length); //UTF-32   1

  //Runes可以将UTF-32字符集表示的内容转成符号
  Runes input = new Runes("\u{1f680}");
  print(new String.fromCharCodes(input)); //🚀

  //symbol
  var a = #abc;
  print(a); //Symbol("abc")
  var b = new Symbol('abc');
  print(b); //Symbol("abc")

  print(#abc == new Symbol('abc')); //true

  //声明动态类型的变量
  dynamic foo = 'bar';
  foo = 1234;
  print(foo); //1234
}
