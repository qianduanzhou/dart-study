//下面是声明实例变量的示例：
class Point {
  late num x; // 声明示例变量 x，初始值为 null 。
  // num y; // 声明示例变量 y，初始值为 null 。
  num z = 0; // 声明示例变量 z，初始值为 0 。
  // Point(this.x, this.y);
  set X(val) {
    x = val;
  }

  get X => x;
}
//未初始化实例变量的默认人值为 “null” 。

/**
 * 所有实例变量都生成隐式 getter 方法。 
 * 非 final 的实例变量同样会生成隐式 setter 方法。 
 */
// class Point2 {
//   num x;
//   num y;
// }

//如果在声明时进行了示例变量的初始化， 那么初始化值会在示例创建时赋值给变量， 该赋值过程在构造函数及其初始化列表执行之前。
main() {
  // var point = Point2();
  // point.x = 4; // Use the setter method for x.
  // print(point.x == 4); // Use the getter method for x.
  // print(point.y == null); // Values default to null.

  Point p = new Point();
  p.X = 5;
  print(p.X);
}
