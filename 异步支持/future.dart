import 'dart:async';
main() async{
  Timer(Duration(seconds: 5), () {
    print(1);
  });
  print(2);
  Future future1 = new Future(() => print('future1'));
  Future future2 = new Future(() => print('future2'));
  Future future3 = Future.delayed(Duration(seconds: 3), () {
    return 'future3';
  });
  future2.then((value) => print('future2.then'));
  future1.then((value) {
    print('future1.then');
    Future future4 = new Future.value('future4');
    print(future4);
    future4.then((value) => print('future4.then'));
    Future.delayed(Duration(seconds: 3),() {
      print('Duration');
    });
  }).then((value) {
    print('future1.then2');
  });

  print(await future3);
  print(3);
}