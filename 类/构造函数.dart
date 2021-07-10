import 'dart:math';

/**
 * 通过创建一个与其类同名的函数来声明构造函数 （另外，还可以附加一个额外的可选标识符，如 命名构造函数 中所述）。 
 * 下面通过最常见的构造函数形式， 即生成构造函数， 创建一个类的实例：
 */
class Point {
  num x, y;

  Point(num x, num y) {
    // 还有更好的方式来实现下面代码，敬请关注。
    this.x = x;
    this.y = y;
  }
}

//通常模式下，会将构造函数传入的参数的值赋值给对应的实例变量， Dart 自身的语法糖精简了这些代码：
class Point2 {
  num x, y;

  // 在构造函数体执行前，
  // 语法糖已经设置了变量 x 和 y。
  Point2(this.x, this.y);
}

/**
 * 默认构造函数
 * 在没有声明构造函数的情况下， Dart 会提供一个默认的构造函数。 默认构造函数没有参数并会调用父类的无参构造函数。
 */

/**
 * 构造函数不被继承
 * 子类不会继承父类的构造函数。 子类不声明构造函数，那么它就只有默认构造函数 (匿名，没有参数) 。
 */

/**
 * 命名构造函数
 * 使用命名构造函数可为一个类实现多个构造函数， 也可以使用命名构造函数来更清晰的表明函数意图：
 */
class Point3 {
  num x, y;

  Point3(this.x, this.y);

  // 命名构造函数
  Point3.origin() {
    x = 0;
    y = 0;
  }
}

/**
 * 切记，构造函数不能够被继承， 这意味着父类的命名构造函数不会被子类继承。 
 * 如果希望使用父类中定义的命名构造函数创建子类， 就必须在子类中实现该构造函数。
 */

/**
 * 调用父类非默认构造函数
 * 默认情况下，子类的构造函数会自动调用父类的默认构造函数（匿名，无参数）。 
 * 父类的构造函数在子类构造函数体开始执行的位置被调用。 
 * 如果提供了一个 initializer list （初始化参数列表）， 则初始化参数列表在父类构造函数执行之前执行。 
 * 总之，执行顺序如下：
 * 1. initializer list （初始化参数列表）
 * 2. superclass’s no-arg constructor （父类的无名构造函数）
 * 3. main class’s no-arg constructor （主类的无名构造函数）
 */

/**
 * 如果父类中没有匿名无参的构造函数， 则需要手工调用父类的其他构造函数。 
 * 在当前构造函数冒号 (:) 之后，函数体之前，声明调用父类构造函数。
 * 下面的示例中，Employee 类的构造函数调用了父类 Person 的命名构造函数。
 */
class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

/**
 * 初始化列表
 * 除了调用超类构造函数之外， 还可以在构造函数体执行之前初始化实例变量。 各参数的初始化用逗号分隔。
 */
class Point4 {
  // 在构造函数体执行之前，
  // 通过初始列表设置实例变量。
  num x, y;
  Point4.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

  //在开发期间， 可以使用 assert 来验证输入的初始化列表。
  Point4.withAssert(this.x, this.y) : assert(x >= 0) {
    print('In Point.withAssert(): ($x, $y)');
  }
}

/**
 * 使用初始化列表可以很方便的设置 final 字段。 
 * 下面示例演示了，如何使用初始化列表初始化设置三个 final 字段。 
 */

class Point5 {
  final num x;
  final num y;
  final num distanceFromOrigin;

  // Point5(num x, num y) {//error
  //   this.x = x;
  //   this.y = y;
  //   this.distanceFromOrigin = sqrt(x * x + y * y);
  // }
  Point5(num x, num y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}

/**
 * 重定向构造函数
 * 有时构造函数的唯一目的是重定向到同一个类中的另一个构造函数。 重定向构造函数的函数体为空， 构造函数的调用在冒号 (:) 之后。
 */
class Point6 {
  num x, y;

  // 类的主构造函数。
  Point6(this.x, this.y);

  // 指向主构造函数
  Point6.alongXAxis(num x) : this(x, 0);
}

/**
 * 常量构造函数
 * 如果该类生成的对象是固定不变的， 那么就可以把这些对象定义为编译时常量。 
 * 为此，需要定义一个 const 构造函数， 并且声明所有实例变量为 final。
 */
class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);

  final num x, y;

  const ImmutablePoint(this.x, this.y);
}

/**
 * 工厂构造函数
 * 当执行构造函数并不总是创建这个类的一个新实例时，则使用 factory 关键字。 
 * 例如，一个工厂构造函数可能会返回一个 cache 中的实例， 或者可能返回一个子类的实例。
 * 以下示例演示了从缓存中返回对象的工厂构造函数：
 */
class Logger {
  final String name;
  bool mute = false;

  // 从命名的 _ 可以知，
  // _cache 是私有属性。
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

//构造函数大括号代表实例化时传入一个对应的对象
class Test {
  final title;
  Test({this.title});
}

main() {
  var point = new Point(1, 2);
  print(point.x);

  var point2 = new Point2(3, 4);
  print(point2.x);

  var point3 = new Point3.origin();
  print(point3.x);

  var emp = new Employee.fromJson({});

  // var point4 = new Point4.fromJson({'x': 1, 'y': 2});
  var point4 = new Point4.withAssert(2, 5);
  print(point4.x);

  var point5 = new Point5(5, 6);
  print(point5.distanceFromOrigin);

  var point6 = new Point6.alongXAxis(5);
  print(point6.y);

  var immutablePoint = new ImmutablePoint(7, 8);
  print(immutablePoint.x);
  print(ImmutablePoint.origin.x);

  //工厂构造函的调用方式与其他构造函数一样：
  var logger = Logger('UI');
  var logger2 = Logger('UI');
  var logger3 = Logger('UI3');
  print(logger);
  print(Logger._cache);
  logger.log('Button clicked');

  Test test = new Test(title: 111);
  print(test.title);
}
