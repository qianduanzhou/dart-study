/**
 * 通常来说， Map 是用来关联 keys 和 values 的对象。 
 * keys 和 values 可以是任何类型的对象。
 * 在一个 Map 对象中一个 key 只能出现一次。 
 * 但是 value 可以出现多次。 
 * Dart 中 Map 通过 Map 字面量 和 Map 类型来实现。
 */
main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  //以上 Map 对象也可以使用 Map 构造函数创建：
  var gifts2 = Map();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  var nobleGases2 = Map();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  //类似 JavaScript ，添加 key-value 对到已有的 Map 中：
  var gifts3 = {'first': 'partridge'};
  gifts3['fourth'] = 'calling birds'; // Add a key-value pair

  //类似 JavaScript ，从一个 Map 中获取一个 value：
  var gifts4 = {'first': 'partridge'};
  print(gifts4['first'] == 'partridge');

  //使用 .length 函数获取当前 Map 中的 key-value 对数量：
  var gifts5 = {'first': 'partridge'};
  gifts5['fourth'] = 'calling birds';
  print(gifts.length == 2);

  //创建 Map 类型运行时常量，要在 Map 字面量前加上关键字 const。
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // constantMap[2] = 'Helium'; // 取消注释会引起错误。
}
