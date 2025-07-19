void main() {
  print(areaRectangle());
  print(areaCircle());
}

double areaRectangle({double length = 2.0, double breadth = 5.0}) {
  return length * breadth;
}

double areaCircle({double radius = 7.0}) {
  return 3.14 * radius * radius;
}
