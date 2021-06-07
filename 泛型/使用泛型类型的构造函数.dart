main() {
  var names = <String>['1', '2', '3', '1'];
  //在调用构造函数的时，在类名字后面使用尖括号（<...>）来指定泛型类型。 例如：
  var nameSet = Set<String>.from(names);
  print(nameSet);

  //下面代码创建了一个 key 为 integer， value 为 View 的 map 对象：
  var views = Map<int, View>();
}
