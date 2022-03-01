void main(List<String> args) {
  var nums = [1, 2, 3];
  //for
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }
  //for ...in
  for (var item in nums) {
    print(item);
  }
  //forEach
  nums.forEach((element) {
    print(element);
  });
  //map
  print(nums.map((item) {
    return item * 2;
  }).toList()); //[2,4,6]
  //where 返回符合条件的元素
  print(nums.where((element) => element % 2 == 1)); //(1, 3)

  //使用any()检测是否有奇数(至少一个)
  print(nums.any((element) => element % 2 == 1)); //true 存在奇数
  //使用every判断每一个都是不是奇数
  print(nums.every((element) => element % 2 == 1)); //false 不全是奇数

  //拓展
  var pairs = [
    [1, 2, 3],
    [4, 5, 6]
  ];
  var flatten = pairs.expand((element) => element).toList();
  print(flatten); //[1, 2, 3, 4, 5, 6]

  //折叠
  //  var nums = [1, 2, 3];
  int result = nums.fold(2, (p, element) => p * element); //2 * (1*2*3)
  int result1 = nums.fold(2, (p, element) => p + element); //2 * (1+2+3)
  print(result); //12
  print(result1); //8
}
