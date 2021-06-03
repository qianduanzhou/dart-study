/**
 * 几乎每种编程语言中最常见的集合可能是 array 或有序的对象集合。 
 * 在 Dart 中的 Array 就是 List 对象， 通常称之为 List 。
 * Dart 中的 List 字面量非常像 JavaScript 中的 array 字面量。 
 * 下面是一个 Dart List 的示例：
 */
main() {
  //Dart 推断 list 的类型为 List<int> 。 如果尝试将非整数对象添加到此 List 中， 则分析器或运行时会引发错误。
  var list = [1, 2, 3];
  print(list.length == 3);
  print(list[1] == 2);

  list[1] = 1;
  print(list[1] == 1);

  //在 List 字面量之前添加 const 关键字，可以定义 List 类型的编译时常量：
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // 取消注释会引起错误。
  print(constantList);
  constantList = [5];
  print(constantList);
}
