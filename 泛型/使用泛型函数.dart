//最初，Dart 的泛型只能用于类。 新语法_泛型方法_，允许在方法和函数上使用类型参数：
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}
