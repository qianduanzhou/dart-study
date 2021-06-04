/**
 * 级联运算符 (..) 可以实现对同一个对像进行一系列的操作。 
 * 除了调用函数， 还可以访问同一对象上的字段属性。 
 * 这通常可以节省创建临时变量的步骤， 同时编写出更流畅的代码。
 */
main() {
  querySelector('#confirm') // 获取对象。
    ..text = 'Confirm' // 调用成员变量。
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'));
  //第一句调用函数 querySelector() ， 返回获取到的对象。 获取的对象依次执行级联运算符后面的代码， 代码执行后的返回值会被忽略。

  //上面的代码等价于：

  var button = querySelector('#confirm');
  button.text = 'Confirm';
  button.classes.add('important');
  button.onClick.listen((e) => window.alert('Confirmed!'));

  //级联运算符可以嵌套，例如：
  final addressBook = (AddressBookBuilder()
        ..name = 'jenny'
        ..email = 'jenny@example.com'
        ..phone = (PhoneNumberBuilder()
              ..number = '415-555-0100'
              ..label = 'home')
            .build())
      .build();

  //在返回对象的函数中谨慎使用级联操作符。 例如，下面的代码是错误的：
  var sb = StringBuffer();
  sb.write('foo')..write('bar'); // Error: 'void' 没有定义 'write' 函数。
  //sb.write() 函数调用返回 void， 不能在 void 对象上创建级联操作。
}
