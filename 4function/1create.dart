void printInfo() {
  print("hello world");
}

//返回值与函数声明的类型要一致
int getNum() {
  //return 'Hello' //不能返回字符串类型
  return 1;
}

void main(List<String> args) {
  printInfo();
  print(getNum()); //1
  //匿名函数
  var myPrint = (value) {
    print(value);
  };
  List fruits = ['苹果', '香蕉', '猕猴桃'];
  // fruits.forEach(myPrint);
  fruits.forEach((element) => {
        print(element) //箭头函数中，不能写结束的分号
      });
  fruits.forEach((element) => print(element));
  print(fruits.map((e) => myPrint(e))); //map你得加上个东西接受，不然不执行
}
