/**
 * 使用 extends 关键字来创建子类， 使用 super 关键字来引用父类：
 */
class Television {
  void turnOn() {
    print('Television-turnOn');
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    print('SmartTelevision-turnOn');
  }
  // ···
}

/**
 * 重写类成员
 * 子类可以重写实例方法，getter 和 setter。 
 * 可以使用 @override 注解指出想要重写的成员：
 */
class SmartTelevision2 extends Television {
  @override
  void turnOn() {
    print('SmartTelevision2-turnOn');
  }
}

/**
 * 重写运算符
 * 下面示例演示一个类重写 + 和 - 操作符：
 */
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // 运算符 == 和 hashCode 部分没有列出。 有关详情，请参考下面的注释。
  // ···
  bool operator ==(dynamic other) {
    if (other is! Vector) return false;
    Vector vector = other;
    print('${vector.x},  ${vector.y}');
    return (vector.x == x && vector.y == y);
  }
}

/**
 * Implementing map keys
 * 在 Dart 中每个对象会默认提供一个整数的哈希值， 因此在 map 中可以作为 key 来使用， 重写 hashCode 的 getter 方法来生成自定义哈希值。 
 * 如果重写 hashCode 的 getter 方法，那么可能还需要重写 == 运算符。 相等的（通过 == ）对象必须拥有相同的哈希值。 
 * 哈希值并不要求是唯一的， 但是应该具有良好的分布形态。。
 */
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // 重写 hashCode，实现策略源于  Effective Java，
  // 第11章。
  @override
  int get hashCode {
    int result = 17;
    result = 37 * result + firstName.hashCode;
    result = 37 * result + lastName.hashCode;
    return result;
  }

  // 如果重写了 hashCode，通常应该从新实现 == 操作符。
  @override
  bool operator ==(dynamic other) {
    if (other is! Person) return false;
    Person person = other;
    return (person.firstName == firstName && person.lastName == lastName);
  }
}

/**
 * noSuchMethod()
 * 当代码尝试使用不存在的方法或实例变量时， 通过重写 noSuchMethod() 方法，来实现检测和应对处理：
 */
class A {
  // 如果不重写 noSuchMethod，访问
  // 不存在的实例变量时会导致 NoSuchMethodError 错误。
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}

/**
 * 除非符合下面的任意一项条件， 否则没有实现的方法不能够被调用：
 * receiver 具有 dynamic 的静态类型 。
 * receiver 具有静态类型，用于定义为实现的方法 (可以是抽象的), 并且 receiver 的动态类型具有 noSuchMethod() 的实现， 该实现与 Object 类中的实现不同。
 */

main() {
  var smart = new SmartTelevision();
  smart.turnOn();

  var smart2 = new SmartTelevision2();
  smart2.turnOn();

  final v = Vector(2, 3);
  final w = Vector(2, 2);

  print(v + w == Vector(4, 5));
  print(v - w == Vector(0, 1));

  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  print(p1.hashCode == p2.hashCode);
  print(p1.hashCode);
  print(p1 == p2);
  print(p1 != p3);

  var a = new A();
  print(a.b);
}
