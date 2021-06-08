//通过实现类的 call() 方法， 能够让类像函数一样被调用。

/**
 * 在下面的示例中，WannabeFunction 类定义了一个 call() 函数， 
 * 函数接受三个字符串参数，函数体将三个字符串拼接，字符串间用空格分割，并在结尾附加了一个感叹号。 
 */
class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}

main() {
  var wf = new WannabeFunction();
  var out = wf("Hi", "there,", "gang");
  print('$out');
}
