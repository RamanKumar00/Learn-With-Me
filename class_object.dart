class Mathematics {
  int addition(int n1, int n2) {
    return n1 + n2;
  }

  int subtraction(int n1, int n2) {
    return n1 - n2;
  }

  int multiplication(int n1, int n2) {
    return n1 * n2;
  }

  int division(int n1, n2) {
    return n1 ~/ n2;
  }
}

void main() {
  Mathematics mathematics = new Mathematics();

  int n1 = 25;
  int n2 = 5;

  int add = mathematics.addition(n1, n2);
  print(add);

  int sub = mathematics.subtraction(n1, n2);
  print(sub);

  int mul = mathematics.multiplication(n1, n2);
  print(mul);

  int div = mathematics.division(n1, n2);
  print(div);
}
