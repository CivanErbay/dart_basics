void main() {
  int result = addieren(1, 4);
  print(result);

  int result2 = addierenNamedParameter(x: 5, p: result);
  print(result2);
}

int addieren(int x, int p) {
  return x + p;
}

int addierenNamedParameter({required int x, required int p}) {
  return x + p;
}
