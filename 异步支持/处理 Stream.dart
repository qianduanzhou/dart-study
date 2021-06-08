/**
 * 当需要从 Stream 中获取数据值时， 可以通过一下两种方式：
 * 使用 async 和 一个 异步循环 （await for）。
 * 使用 Stream API, 更多详情，参考 in the library tour。
 */
//以下是异步for循环的使用形式：
await for (varOrType identifier in expression) {
  // Executes each time the stream emits a value.
}
/**
 * 上面 表达式 返回的值必须是 Stream 类型。 执行流程如下：
 * 1.等待，直到流发出一个值
 * 2.执行 for 循环体，将变量设置为该发出的值
 * 3.重复1和2，直到关闭流。
 */

/**
 * 使用 break 或者 return 语句可以停止接收 stream 的数据， 这样就跳出了 for 循环， 并且从 stream 上取消注册。 
 * **如果在实现异步 for 循环时遇到编译时错误， 请检查确保 await for 处于异步函数中。** 
 * 例如，要在应用程序的 main() 函数中使用异步 fo r循环， main() 函数体必须标记为 async` ：
 */
Future main() async {
  // ...
  await for (var request in requestServer) {
    handleRequest(request);
  }
  // ...
}