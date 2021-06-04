main() {
  //一个函数可以作为另一个函数的参数。 例如：
  void printElement(int element) {
    print(element);
  }

  var list = [1, 2, 3];

  // 将 printElement 函数作为参数传递。
  list.forEach(printElement);

  //同样可以将一个函数赋值给一个变量，例如：
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  print(loudify('hello') == '!!! HELLO !!!');
}
