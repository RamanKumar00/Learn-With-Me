void main() {
  int n = 2;
  print(printDay(n));
}

String printDay(int n) {
  switch (n) {
    case (1):
      return "monday";

    case (2):
      return "tuesday";

    case (3):
      return "wednesday";

    default:
      return "record not found";
  }
}
