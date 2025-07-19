void main() {
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i * 2);
    }

    if (i == 5) {
      break;
    }
  }
  print("Loop is over");
}
