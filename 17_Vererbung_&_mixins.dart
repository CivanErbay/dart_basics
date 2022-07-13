void main() {
  //Vererbung Student-Methoden und Definition
  Student student1 = Student();
  student1.setStudienjahr = 2;
  int studienjahr = student1.getStudienjahr;
  student1.feiern();

  //Class Person Methoden
  student1.setName = "Patrick";
  student1.laufen();
  print(student1.getName);

  //Mixin Methode
  student1.lernen();
}

class Person {
  late String _name;
  late int _alter;

  //getter
  String get getName => this._name;
  int get getAlter => this._alter;

  //setter
  set setName(String name) {
    this._name = name;
  }

  set setAlter(int alter) {
    this._alter = alter;
  }

  //methoden

  void laufen() {
    print("person läuft");
  }
}

//Mixin sind keine Klassen, haben deshalb keine Konstruktoren
mixin Lernender {
  void lernen() {
    print("lernen");
  }
}

class Student extends Person with Lernender {
  late int _studienjahr;

  //getter

  int get getStudienjahr => this._studienjahr;

  //setter

  set setStudienjahr(int studienjahr) {
    this._studienjahr = studienjahr;
  }

  //methoden

  void feiern() {
    print("party");
  }
}
