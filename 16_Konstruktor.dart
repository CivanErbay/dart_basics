void main() {
  Car car1 = Car(color: "red", ps: 300);
}

class Car {
  //Default Constructor
  //Car();

  //Extended Constructor
  Car({required String color, required int ps}) {
    this._color = color;
    this._ps = ps;
    drive();
  }

  //Extended Constructor with filling final variables (only time possible while initiation of Class)
  /* Car({required this.color, required this.ps}) */
  //final String color;
  //final int color;String ps;

  late String _color;
  late int _ps;

  void drive() {
    print('Car is moving');
  }
}
