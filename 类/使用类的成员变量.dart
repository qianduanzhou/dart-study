/**
 * 对象由函数和数据（即方法和实例变量）组成。 
 * 方法的调用要通过对象来完成： 调用的方法可以访问其对象的其他函数和数据。
 */
main() {
  //使用 (.) 来引用实例对象的变量和方法：
  var p = Point(2, 2);
  // 为实例的变量 y 设置值。
  p.y = 3;
  // 获取变量 y 的值。
  print(p.y == 3);
  // 调用 p 的 distanceTo() 方法。
  num distance = p.distanceTo(Point(4, 4));

  //使用 ?. 来代替 . ， 可以避免因为左边对象可能为 null ， 导致的异常：
  p?.y = 4;
}
