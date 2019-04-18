void main() {
  var a;

  a = 10;
  print(a.runtimeType);
  a = "Dart";
  print(a.runtimeType);

  final cc = 30;

  dynamic b = 20;
  b = "JavaScript";

  var list = new List();
  list.add(b);
  list.add(true);

  print(list.whereType());

  print(list.runtimeType);

  print(list.whereType());


  //运算符号 + - * %
  //递增和递减的算数运算符号

  dynamic c = 30;
  print(c);
  c = 'after';
  print(c);



}
