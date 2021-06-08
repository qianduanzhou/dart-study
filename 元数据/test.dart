//使用 @todo 注解的示例：
import 'todo.dart';

main() {
  @Todo('seth', 'make this do something')
  void doSomething() {
    print('do something');
  }

  doSomething();
}
