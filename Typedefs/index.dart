/**
 * 在 Dart 中，函数也是对象，就想字符和数字对象一样。 
 * 使用 typedef ，或者 function-type alias 为函数起一个别名， 别名可以用来声明字段及返回值类型。 
 * 当函数类型分配给变量时，typedef会保留类型信息。
 */
class SortedCollection {
  Function compare;

  SortedCollection(int f(Object a, Object b)) {
    compare = f;
  }
}

// Initial, broken implementation.
int sort(Object a, Object b) => 0;

/**
 * 当把 f 赋值给 compare 的时候，类型信息丢失了。 
 * f 的类型是 (Object, Object) → int (这里 → 代表返回值类型)， 但是 compare 得到的类型是 Function 。
 * 如果我们使用显式的名字并保留类型信息， 这样开发者和工具都可以使用这些信息：
 */
typedef Compare = int Function(Object a, Object b);

class SortedCollection2 {
  Compare compare;
  SortedCollection2(this.compare);
}

int sort2(Object a, Object b) => 0;

/**
 * 由于 typedefs 只是别名， 他们还提供了一种方式来判断任意函数的类型。例如：
 */
typedef Compare2<T> = int Function(T a, T b);

int sort3(int a, int b) => a - b;

// Initial, broken implementation. // broken ？

void main() {
  SortedCollection coll = SortedCollection(sort);

  // 虽然知道 compare 是函数，
  // 但是函数是什么类型 ？
  print(coll.compare is Function);

  SortedCollection2 coll2 = SortedCollection2(sort2);
  print(coll2.compare is Function);
  print(coll2.compare is Compare);

  print(sort3 is Compare2<int>);
}
