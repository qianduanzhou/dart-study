main() {
  //Dart 中泛型类型是 固化的，也就是说它们在运行时是携带着类型信息的。 例如， 在运行时检测集合的类型：
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); // true
}
