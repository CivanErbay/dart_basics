void main() {
  List<int> liste = [1, 2, 3];

  print(liste);

  print(liste[1]);

  int listLength = liste.length;

  print(listLength);

  print(liste.isEmpty);

  liste.add(3);

  print(liste);

  Map<String, String> map = {"key1": "value1", "key2": "value2"};

  print(map);
  print(map.keys);
  print(map.length);
  print(map["key1"]);
}
