abstract class FlyBehavior {
  void fly();
}

abstract class QuackBehavior {
  void quack();
}

class Quack implements QuackBehavior {
  @override
  void quack() {
    print('could quack');
  }
}

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print('Fly With Wings');
  }
}

class Duck {
  FlyBehavior? flyBehavior;
  QuackBehavior? quackBehavior;
  void preformFly() {
    flyBehavior?.fly();
  }

  void preformQuack() {
    quackBehavior?.quack();
  }
}

class MallredDuck extends Duck {
  MallredDuck() {
    flyBehavior = FlyWithWings();
    quackBehavior = Quack();
  }
}

void main() {
  Duck duck = MallredDuck();
  duck.preformFly();
  duck.preformQuack();
}
