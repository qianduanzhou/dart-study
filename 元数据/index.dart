/**
 * 使用元数据可以提供有关代码的其他信息。 
 * 元数据注释以字符 @ 开头， 后跟对编译时常量 (如 deprecated) 的引用或对常量构造函数的调用。
 */

/**
 * 对于所有 Dart 代码有两种可用注解：@deprecated 和 @override。 
 * 关于 @override 的使用， 参考 扩展类（继承）。 下面是使用 @deprecated 注解的示例：
 */
class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated
  void activate() {
    //使用turnOn代替activate
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {}
}

main(List<String> args) {
  var television = new Television();
  television.turnOn();
}
//可以自定义元数据注解。 下面的示例定义了一个带有两个参数的 @todo 注解：


