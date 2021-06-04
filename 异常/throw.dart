main() {
  //下面是关于抛出或者 引发 异常的示例：
  throw FormatException('Expected at least 1 section');
  //也可以抛出任意的对象：
  throw 'Out of llamas!';
  //因为抛出异常是一个表达式， 所以可以在 => 语句中使用，也可以在其他使用表达式的地方抛出异常：
  void distanceTo(Point other) => throw UnimplementedError();
}
