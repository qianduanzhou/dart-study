main() {
  /**
   * Dart 字符串是一组 UTF-16 单元序列。 
   * 字符串通过单引号或者双引号创建。
   */
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  /**
   * 字符串可以通过 ${expression} 的方式内嵌表达式。 
   * 如果表达式是一个标识符，则 {} 可以省略。 
   * 在 Dart 中通过调用就对象的 toString() 方法来得到对象相应的字符串。
   */
  var s = 'string interpolation';
  print('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  print('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');

  /**
   * 可以使用 + 运算符来把多个字符串连接为一个，
   * 也可以把多个字面量字符串写在一起来实现字符串连接：
   */
  var s5 = 'String '
      'concatenation'
      " works even over line breaks.";
  print(s5 ==
      'String concatenation works even over '
          'line breaks.');
  var s6 = 'The + operator ' + 'works, as well.';
  print(s6 == 'The + operator works, as well.');

  //使用连续三个单引号或者三个双引号实现多行字符串对象的创建：
  var s7 = '''
  You can create
  multi-line strings like this one.
  ''';

  var s8 = """This is also a
  multi-line string.""";

  //使用 r 前缀，可以创建 “原始 raw” 字符串：
  var s9 = r"In a raw string, even \n isn't special.";
  print(s9);

  /**
   * 一个编译时常量的字面量字符串中，如果存在插值表达式，表达式内容也是编译时常量， 那么该字符串依旧是编译时常量。 
   * 插入的常量值类型可以是 null，数值，字符串或布尔值。
   */
  // const 类型数据
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // 非 const 类型数据
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString'; //const 类型数据
  // const invalidConstString = '$aNum $aBool $aString $aConstList'; //非 const 类型数据
}
