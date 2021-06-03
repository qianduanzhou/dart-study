/**
 * 在 Dart 中 Set 是一个元素唯一且无需的集合。 
 * Dart 为 Set 提供了 Set 字面量和 Set 类型。
 */
main() {
  //下面是通过字面量创建 Set 的一个简单示例：
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'astatine'
  };
  print(halogens);

  //要创建一个空集，使用前面带有类型参数的 {} ，或者将 {} 赋值给 Set 类型的变量：
  var names = <String>{};
  // Set<String> names = {}; // 这样也是可以的。
  // var names = {}; // 这样会创建一个 Map ，而不是 Set 。

  //使用 add() 或 addAll() 为已有的 Set 添加元素：
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements);

  //在 Set 字面量前增加 const ，来创建一个编译时 Set 常量：
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // Uncommenting this causes an error.
}
