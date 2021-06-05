import 'dart:math';

/**
 * 方法是为对象提供行为的函数。
 */
class Point {
  num x, y;

  Point(this.x, this.y);

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

/**
 * Getter 和 Setter
 * Getter 和 Setter 是用于对象属性读和写的特殊方法。 
 * 回想之前的例子，每个实例变量都有一个隐式 Getter ，通常情况下还会有一个 Setter 。 
 * 使用 get 和 set 关键字实现 Getter 和 Setter ，能够为实例创建额外的属性。
 */
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // 定义两个计算属性： right 和 bottom。
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}
//最开始实现 Getter 和 Setter 也许是直接返回成员变量； 随着需求变化， Getter 和 Setter 可能需要进行计算处理而使用方法来实现； 但是，调用对象的代码不需要做任何的修改。

/**
 * 抽象方法
 * 实例方法， getter， 和 setter 方法可以是抽象的， 只定义接口不进行实现，而是留给其他类去实现。 
 * 抽象方法只存在于 抽象类 中。
 */
//定义一个抽象函数，使用分号 (;) 来代替函数体：
abstract class Doer {
  // 定义实例变量和方法 ...

  void doSomething(); // 定义一个抽象方法。
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // 提供方法实现，所以这里的方法就不是抽象方法了...
  }
}

/**
 * 实例方法
 */
main() {
  var point = new Point(1, 2);
  print(point.distanceTo(point));

  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left == 3);
  rect.right = 12;
  print(rect.left == -8);
}
