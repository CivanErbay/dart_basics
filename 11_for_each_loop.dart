void main() {
  List<int> liste = [1, 2, 3, 4, 5];
  List<int> liste2 = [];

  liste.forEach((element) {
    element++;
    liste2.add(element);
  });

  print(liste2);
}
