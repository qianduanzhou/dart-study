/**
 * Dart 是一门真正面向对象的语言， 甚至其中的函数也是对象，并且有它的类型 Function 。 
 * 这也意味着函数可以被赋值给变量或者作为参数传递给其他函数。 
 * 也可以把 Dart 类的实例当做方法来调用。
 */
main() {
  //已下是函数实现的示例：
  const _nobleGases = {1: 'a', 2: 'b'};
  bool isNoble(int atomicNumber) {
    print(_nobleGases[atomicNumber]);
    return _nobleGases[atomicNumber] != null;
  }

  isNoble2(atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

  isNoble(1);
  //如果函数中只有一句表达式，可以使用简写语法：
  bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;
}
