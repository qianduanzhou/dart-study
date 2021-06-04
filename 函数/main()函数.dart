/**
 * 任何应用都必须有一个顶级 main() 函数，作为应用服务的入口。 
 * main() 函数返回值为空，参数为一个可选的 List<String> 。
 */

//下面是 web 应用的 main() 函数：
main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(reverseText);
}

//下面是一个命令行应用的 main() 方法，并且使用了输入参数：
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
