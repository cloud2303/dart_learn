void main(List<String> args) {
  //声明字符串
  // var str1 = 'hello world'; //通过单引号
  // print(str1);
  // var str2 = "你好 世界"; //双引号
  // print(str2);

  String str1 = 'hello world'; //通过单引号
  print(str1);
  String str2 = "你好 世界"; //双引号
  print(str2);
  String str3 = '''hello //三引号
  world
  ''';
  print(str3);
  //常见操作
  //字符串拼接
  print(str1 + str2); //字符串拼接
  print("$str1 $str2"); //模板字符串
  //字符串分割
  print(str1.split(""));
  //字符串的裁切
  print("   aqc    ".trim()); //切割aqc周围无用的字符
  //判断字符串是否为空
  print("".isEmpty); //true
  print("".isNotEmpty); //false
  //字符串替换
  print(str1.replaceAll("hello", "hahaha")); //hahaha world
  //支持正则替换
  print("clo33ud2303a12aa".replaceAll(RegExp(r'\d+'), "_")); //clo_ud_a_aa
  //通过正则匹配手机号
  var isPhone =
      RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');
  print(isPhone.hasMatch("14433336666")); //true
  print(isPhone.hasMatch("456")); //false
  //查找字符串
  print(str1.contains("hello")); //true
  //定位字符串
  print(str1.indexOf("l")); //2 第三个位置
}
