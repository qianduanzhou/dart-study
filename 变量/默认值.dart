main() {
  /**
   * 1. 变量
   */
  /**
   * 创建一个变量并进行初始化:
   * 变量仅存储对象引用，这里的变量是 name 存储了一个 String 类型的对象引用。
   * “Bob” 是这个 String 类型对象的值。name 变量的类型被推断为 String 。
   */
  var name = 'Bob';
  /**
   * 但是也可以通过指定类型的方式，来改变变量类型。 
   * 如果对象不限定为单个类型，可以指定为 对象类型 或 动态类型
   */
  dynamic name2 = 'Bob';
  /**
   * 另一种方式是显式声明可以推断出的类型：
   */
  String name3 = 'Bob';

  /**
   * 2. 默认值
   */
  //未初始化的变量默认值是 null。即使变量是数字 类型默认值也是 null，因为在 Dart 中一切都是对象，数字类型 也不例外。
  int lineCount;
  print(lineCount == null);
}
