/**
 * 可选参数可以是命名参数或者位置参数，但一个参数只能选择其中一种方式修饰。
 */
main() {
  /**
   * 1. 命名可选参数
   */
  //调用函数时，可以使用指定命名参数 paramName: value。 例如：
  // void enableFlags({bool bold, bool hidden}) {}
  // enableFlags(bold: true, hidden: false);
  /**
   * Flutter 创建实例的表达式可能很复杂， 因此窗口小部件构造函数仅使用命名参数。 这样创建实例的表达式更易于阅读。
   * 使用 @required 注释表示参数是 required 性质的命名参数， 该方式可以在任何 Dart 代码中使用（不仅仅是Flutter）。
   * 此时 Scrollbar 是一个构造函数， 当 child 参数缺少时，分析器会提示错误。
   */
  // const Scrollbar({Key key, @required Widget child})
  /**
   * Required 被定义在 meta package。 
   * 无论是直接引入（import） package:meta/meta.dart ，或者引入了其他 package，而这个 package 输出（export）了 meta，比如 Flutter 的 package:flutter/material.dart。
   */

  /**
   * 2. 位置可选参数
   */
  //将参数放到 [] 中来标记参数是可选的：
  String say(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

  //下面是不使用可选参数调用上面方法 的示例：
  print(say('Bob', 'Howdy') == 'Bob says Howdy');

  /**
   * 3. 默认参数值
   */
  //在定义方法的时候，可以使用 = 来定义可选参数的默认值。 默认值只能是编译时常量。 如果没有提供默认值，则默认值为 null。
  //下面是设置可选参数默认值示例：
  // 设置 [bold] 和 [hidden] 标志 ...
  void enableFlags({bool bold = false, bool hidden = false}) {}
  // bold 值为 true; hidden 值为 false.
  enableFlags(bold: true);

  //下面示例演示了如何为位置参数设置默认值：
  String say2(String from, String msg,
      [String device = 'carrier pigeon', String mood]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    if (mood != null) {
      result = '$result (in a $mood mood)';
    }
    return result;
  }

  print(say2('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

  //list 或 map 可以作为默认值传递。 下面的示例定义了一个方法 doStuff()， 并分别指定参数 list 和 gifts 的默认值。
  void doStuff(
      {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
    print('list:  $list');
    print('gifts: $gifts');
  }
}
