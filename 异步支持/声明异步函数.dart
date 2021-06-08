/**
 * 函数体被 async 标示符标记的函数，即是一个_异步函数_。 
 * 将 async 关键字添加到函数使其返回Future。 
 * 例如，考虑下面的同步函数，它返回一个 String ：
 */
String lookUpVersion() => '1.0.0';

//例如，将来的实现将非常耗时，将其更改为异步函数，返回值是 Future 。
Future<String> lookUpVersion() async => '1.0.0';

/**
 * 注意，函数体不需要使用Future API。 
 * 如有必要， Dart 会创建 Future 对象。
 * 如果函数没有返回有效值， 需要设置其返回类型为 Future<void> 。
 */