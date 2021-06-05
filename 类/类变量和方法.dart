import 'dart:math';

/**
 * 使用 static 关键字实现类范围的变量和方法。
 */
/**
 * 静态变量
 * 静态变量（类变量）对于类级别的状态是非常有用的：
 */
class Queue {
  static const initialCapacity = 16;
  // ···
}

/**
 * 静态方法
 * 静态方法（类方法）不能在实例上使用，因此它们不能访问 this 。 例如：
 */
class Point {
  num x, y;
  Point(this.x, this.y);

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  print(Queue.initialCapacity == 16);

  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  print(2.8 < distance && distance < 2.9);
  print(distance);
}
