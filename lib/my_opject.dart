class MyOpject {
  int _value;
  MyOpject(this._value);

  int get value => _value;
  set value(newvalue) => _value = newvalue;

  void increase() {
    _value++;
  }

  void decrease() {
    _value--;
  }

  void multiply(int a) {
    _value *= a;
  }

  void divide(int a) {
    if (a == 0) {
      //hiểm thị thông báo
    } else {
      _value = _value ~/ a;
    }
  }

  void square() {
    _value = _value * _value;
  }

  int power(int exponent) {
    if (exponent == 0) {
      return 1;
    } else {
      return _value * power(exponent - 1);
    }
  }
}
