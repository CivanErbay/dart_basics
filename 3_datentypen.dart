void main() {
  int alter = 23;

  double doubleBsp = 4.4;

  bool boolBsp = false;

  // STATISCHE TYPISIERUNG

  String stringBspEins = 'ersterString';

  String stringBspZwei = 'zweiterString';

  String hello = 'Hallo';

  String world = ' World';

  String helloWorld = hello + world + 'World';

  print(helloWorld);

  // String + Integer combined

  String stringIntCombined = "Ich bin $alter Jahre alt";

  print(stringIntCombined);

  // AUTOMATISCHE TYPISIERUNG (einmal definiert nicht mehr überrschreibbar)

  var stringBspEinsAuto = 'ersterString';

  var stringBspZweiAuto = 'zweiterString';

  var helloAuto = 'Hallo';

  var worldAuto = ' World';

  var helloWorldAuto = hello + world + 'World';

  //Dynamische Typisiserung (immer wieder überrschreibbar)

  dynamic dynamicVariable = "String";

  dynamicVariable = 2;

  print(dynamicVariable);
}
