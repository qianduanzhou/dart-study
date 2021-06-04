/**
 * as， is， 和 is! 运算符用于在运行时处理类型检查：
 */
main() {
  /**
   * 例如， obj is Object 总是 true。 但是只有 obj 实现了 T 的接口时， obj is T 才是 true。
   * 使用 as 运算符将对象强制转换为特定类型。 
   * 通常，可以认为是 is 类型判定后，被判定对象调用函数的一种缩写形式。 请考虑以下代码：
   */
  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
  }
  //使用 as 运算符进行缩写：
  (emp as Person).firstName = 'Bob';
}
