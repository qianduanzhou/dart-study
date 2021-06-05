/**
 * Mixin 是复用类代码的一种途径， 复用的类可以在不同层级，之间可以不存在继承关系。
 * 通过 with 后面跟一个或多个混入的名称，来 使用 Mixin ， 下面的示例演示了两个使用 Mixin 的类：
 */

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

mixin Aggressive {
  String name = '';
}

class Performer {}

class Person {}

class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

main(List<String> args) {
  Maestro maestro = Maestro('zhou');
  print(maestro.canConduct);
  print(maestro.canCompose);
  print(maestro.name);
  print(maestro.entertainMe());
}
