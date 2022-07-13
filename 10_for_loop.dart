void main() {
  List<int> liste = [1, 2, 3, 4, 5];
  List<int> liste2 = [];

  for (int i = 0; i < liste.length; i++) {
    print(liste[i]);

    if (i % 2 == 0) {
      liste2.add(i);
    }
  }

  print(liste2);
}
