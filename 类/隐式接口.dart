/**
 * 每个类都隐式的定义了一个接口，接口包含了该类所有的实例成员及其实现的接口。 
 * 如果要创建一个 A 类，A 要支持 B 类的 API ，但是不需要继承 B 的实现， 那么可以通过 A 实现 B 的接口。
 */
//一个类可以通过 implements 关键字来实现一个或者多个接口， 并实现每个接口要求的 API。 例如：
// person 类。 隐式接口里面包含了 greet() 方法声明。
class Person {
  // 包含在接口里，但只在当前库中可见。
  final _name;

  // 不包含在接口里，因为这是一个构造函数。
  Person(this._name);

  // 包含在接口里。
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// person 接口的实现。
class Impostor implements Person {
  get _name => 'zhou';
  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

//下面示例演示一个类如何实现多个接口： Here’s an example of specifying that a class implements multiple interfaces:
// class Point implements Comparable, Location {

// }

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

  var impostor = new Impostor();

  print(impostor._name);
}
