/**
 * 如果 assert 语句中的布尔条件为 false ， 那么正常的程序执行流程会被中断。 在本章中包含部分 assert 的使用， 下面是一些示例：
 */
main() {
  String text = '123';
  num number = 5;
  String urlString = 'https://';
  // 确认变量值不为空。
  assert(text != null);
  print(1);
  // 确认变量值小于100。
  assert(number < 100);
  print(2);
  // 确认 URL 是否是 https 类型。
  assert(urlString.startsWith('https'));
  print(3);

  //assert 的第二个参数可以为其添加一个字符串消息。
  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');

  //assert 的第一个参数可以是解析为布尔值的任何表达式。
  //如果表达式结果为 true ， 则断言成功，并继续执行。 如果表达式结果为 false ， 则断言失败，并抛出异常 (AssertionError) 。
}
