//使用泛型类型的时候， 可以使用 extends 实现参数类型的限制。
class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {...}
main() {
  //可以使用 SomeBaseClass 或其任意子类作为通用参数：
  var someBaseClassFoo = Foo<SomeBaseClass>();
  var extenderFoo = Foo<Extender>();

  //也可以不指定泛型参数：
  var foo = Foo();
  print(foo); // Instance of 'Foo<SomeBaseClass>'

  //指定任何非 SomeBaseClass 类型会导致错误：
  var foo2 = Foo<Object>();
}
