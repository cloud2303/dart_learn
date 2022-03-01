// String getData(String value) {
//   return value;
// }
// int getData(int value) {
//   return value;
// }
//  getData( value) {
//   return value;
// }
T getData<T>(T value) {
  return value;
}

void main(List<String> args) {
  print(getData<String>('hello')); //hello
  print(getData<int>(10)); //10
}
