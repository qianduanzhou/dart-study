main() {
  /**
   * List , Set 和 Map 字面量也是可以参数化的。 
   * 参数化字面量和之前的字面量定义类似， 对于 List 或 Set 只需要在声明语句前加 <type> 前缀， 对于 Map 只需要在声明语句前加 <keyType, valueType> 前缀， 下面是参数化字面量的示例：
   */
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };
}
