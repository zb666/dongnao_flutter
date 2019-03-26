void main(List args) {
  print(args);
  var string = getString("hhh");

  //1. 方法类型和参数表达式的类型都可以进行省略
  //2. =>可以表示的是只有一种返回值的情况
  print(string);
}

getString(name) {
  return name;
}

getHHH(String name) {
  return name;
}
