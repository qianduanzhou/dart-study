main() {
  /**
   * 不管是否抛出异常， finally 中的代码都会被执行。 
   * 如果 catch 没有匹配到异常， 异常会在 finally 执行完成后，再次被抛出：
   */
  try {
    breedMoreLlamas();
  } finally {
    // Always clean up, even if an exception is thrown.
    cleanLlamaStalls();
  }

  //任何匹配的 catch 执行完成后，再执行 finally ：
  try {
    breedMoreLlamas();
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {
    cleanLlamaStalls(); // Then clean up.
  }
}
