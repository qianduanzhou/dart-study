main() {
  /**
   * 3. Final 和 Const
   */
  /**
   * 使用过程中从来不会被修改的变量， 可以使用 final 或 const, 而不是 var 或者其他类型， Final 变量的值只能被设置一次； 
   * Const 变量在编译时就已经固定 (Const 变量 是隐式 Final 的类型.) 最高级 final 变量或类变量在第一次使用时被初始化。
   */
  final name4 = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  // name4 = 'Alice'; // Error: 一个 final 变量只能被设置一次。
  /**
   * 如果需要在编译时就固定变量的值，可以使用 const 类型变量。 
   * 如果 Const 变量是类级别的，需要标记为 static const。 
   * 在这些地方可以使用在编译时就已经固定不变的值，字面量的数字和字符串， 固定的变量，或者是用于计算的固定数字：
   */
  const bar = 1000000; // 压力单位 (dynes/cm2)
  const double atm = 1.01325 * bar; // 标准气压
  /**
   * Const 关键字不仅可以用于声明常量变量。 
   * 还可以用来创建常量值，以及声明创建常量值的构造函数。 
   * 任何变量都可以拥有常量值。
   */
  var foo = const [];
  final bar2 = const [];
  const baz = []; // Equivalent to `const []`
  /**
   * 非 Final ， 非 const 的变量是可以被修改的，即使这些变量 曾经引用过 const 值。
   */
  foo = [1, 2, 3]; // 曾经引用过 const [] 常量值。
  //Const 变量的值不可以修改：
  // baz = [42]; // Error: 常量变量不能赋值修改。
}
