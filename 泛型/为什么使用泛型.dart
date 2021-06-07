/**
 * 在类型安全上通常需要泛型支持， 它的好处不仅仅是保证代码的正常运行：
 * 正确指定泛型类型可以提高代码质量。
 * 使用泛型可以减少重复的代码。
 */

/**
 * 另外一个使用泛型的原因是减少重复的代码。 
 * 泛型可以在多种类型之间定义同一个实现， 同时还可以继续使用检查模式和静态分析工具提供的代码分析功能。 
 * 例如，假设你创建了一个用于缓存对象的接口：
 */
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

//后来发现需要一个相同功能的字符串类型接口，因此又创建了另一个接口：
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}
//后来，又发现需要一个相同功能的数字类型接口 … 这里你应该明白了。

//泛型可以省去创建所有这些接口的麻烦。 通过创建一个带有泛型参数的接口，来代替上述接口：
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

main() {
  /**
   * 如果想让 List 仅仅支持字符串类型， 可以将其声明为 List<String> （读作“字符串类型的 list ”）。 
   * 那么，当一个非字符串被赋值给了这个 list 时，开发工具就能够检测到这样的做法可能存在错误。 例如：
   */
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  // names.add(42); // 错误
}
