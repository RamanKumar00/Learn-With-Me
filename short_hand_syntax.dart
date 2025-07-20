void main() {
  double l = 4;
  double b = 6;

  double area = areaOfRectangle(l, b);
  print(area);
}

// double areaOfRectangle(double length, double breadth) {
//   double area = length * breadth;
//   return area;

  // we can reduce the number of line by usinf shorthand syntax
  double areaOfRectangle(double length, double breadth) => length * breadth;
 

 //both give the same result but 2nd method take less lines then the firdt one
