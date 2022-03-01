enum Color { red, green, blue }
void main(List<String> args) {
  //通过index返回枚举中具体常量的值
  print(Color.blue.index); //2
  //通过values返回常量列表
  print(Color.values); //[Color.red, Color.green, Color.blue]

  //
  List<Color> colors = Color.values;
  print(colors); //[Color.red, Color.green, Color.blue]
  //通过下标访问列表中的内容
  print(colors[0]); //Color.red
  colors.forEach((element) {
    print('value: $element,index:${element.index}');
  });
  //value: Color.red,index:0
// value: Color.green,index:1
// value: Color.blue,index:2
}
