import '1create.dart';

var globalNum = 1000;
void main(List<String> args) {
  printInfo() {
    var localNum = 99;
    print(localNum); //99
    print(globalNum); //1000
  }

  printInfo();
  // printInfo(localNum);//不能访问

  getMoney() {
    int money = 100;
    return () {
      money -= 1;
      print(money);
    };
  }

  var a = getMoney();
  a();
  a();
  a();
}
