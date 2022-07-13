void main() {
  Car car1 = Car();
  car1.setColor = "rot";
  Car car2 = Car();
  car2.setColor = "blau";

  String colorFromCar = car1.getColor;

  car1.sayColor();
  car2.sayColor();

  car1.drive();
}

//late --> variable wird später gesetzt

class Car {
  //Setter Example
  set setColor(String color) {
    if (color == 'rot') {
      this._color = color;
    } else {
      print('Geht nicht, nimm eine andere Farbe');
    }
  }

  //Getter Example
  String get getColor {
    return this._color;
  }
  //Getter -- kürzere Funktions-Schreibweise
  //String get getColor => this._color;

  //Attribute
  //Unterstrich vor der Variable = private variable
  late String _color;

  void drive() {
    _legeGangEin();
    print("Car is moving");
  }

  void _legeGangEin() {
    print("Gang1");
  }

  void sayColor() {
    print(_color);
  }
}
