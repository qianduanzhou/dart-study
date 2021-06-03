main() {
  /**
   * Dart 使用 bool 类型表示布尔值。 
   * Dart 只有字面量 true and false 是布尔类型， 这两个对象都是编译时常量。
   * Dart 的类型安全意味着不能使用 if (nonbooleanValue) 或者 assert (nonbooleanValue)。 
   * 而是应该像下面这样，明确的进行值检查：
   */

  // 检查空字符串。
  var fullName = '';
  print(fullName.isEmpty);

  // 检查 0 值。
  var hitPoints = 0;
  print(hitPoints <= 0);

  // 检查 null 值。
  var unicorn;
  print(unicorn == null);

  // 检查 NaN 。
  var iMeantToDoThis = 0 / 0;
  print(iMeantToDoThis.isNaN);
}
