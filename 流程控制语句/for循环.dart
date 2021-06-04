main() {
  //进行迭代操作，可以使用标准 for 语句。
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  //闭包在 Dart 的 for 循环中会捕获循环的 index 索引值， 来避免 JavaScript 中常见的陷阱。
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    print(i);
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  /**
   * I如果要迭代一个实现了 Iterable 接口的对象， 可以使用 forEach() 方法， 
   * 如果不需要使用当前计数值， 使用 forEach() 是非常棒的选择；
   */
  Set<String> candidates = {'a', 'b'};
  candidates.forEach((candidate) => print(candidate));

  /**
   * 实现了 Iterable 的类（比如， List 和 Set）同样也支持使用 for-in 进行迭代操作 iteration ：
   */
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }
}
