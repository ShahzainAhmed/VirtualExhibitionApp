class AppState {
  /// global Variables for app here
  static final AppState _singleton = AppState._internal();

  factory AppState() {
    return _singleton;
  }

  AppState._internal();

  int _counter = 0;
  int get counter => _counter;
  set setCounter(int count) => _counter = count;

  int _product = 0;
  int get product => _product;
  set setProduct(int product) => _product = product;
}

final AppState appState = AppState();
