class Mathematics {
  int n1 = 0;
  int n2 = 0;

  Mathematics(int n1, int n2) { // parameterized constructor and you do not have parametrized and default constructor in same class
    this.n1 = n1;
    this.n2 = n2;
  }

  int addition() {
    return this.n1 + this.n2;
  }

  int subtract() {
    return this.n1 - this.n2;
  }

  int multiply() {
    return this.n1 * this.n2;
  }

  double divison() {
    return this.n1 / this.n2;
  }
}

void main() {
  Mathematics mathematics = new Mathematics(34, 17);

  int add = mathematics.addition();
  print(add);

  int sub = mathematics.subtract();
  print(sub);

  int mul = mathematics.multiply();
  print(mul);

  double div = mathematics.divison();
  print(div);
}
