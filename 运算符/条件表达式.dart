/**
 * Dart有两个运算符，有时可以替换 if-else 表达式， 让表达式更简洁：
 * condition ? expr1 : expr2
 * 如果条件为 true, 执行 expr1 (并返回它的值)： 否则, 执行并返回 expr2 的值。
 * expr1 ?? expr2
 * 如果 expr1 是 non-null， 返回 expr1 的值； 否则, 执行并返回 expr2 的值。
 */
main() {
  //如果赋值是根据布尔值， 考虑使用 ?:。
  bool isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);
  //如果赋值是基于判定是否为 null， 考虑使用 ??。
  var name = null;
  String playerName(String name) => name ?? 'Guest';
  print(playerName(name));
}
