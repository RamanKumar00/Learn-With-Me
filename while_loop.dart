void main() {
  int n = 5;
  print(fact(n));
}

int fact(int n) {
  int i = n;
  int product = 1;
  while (i >= 1) {
    product = product * i;
    i = i - 1;
  }
  return product;
}
