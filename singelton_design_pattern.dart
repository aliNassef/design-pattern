class Singleton {
  static final Singleton _instance = Singleton._private();

  Singleton._private();

  static Singleton getInstance() {
    return _instance;
  }
}
