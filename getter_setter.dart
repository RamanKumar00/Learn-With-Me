class Mathematics {
  int _num = 0;
  int _dem = 0;

  void setnumerator(int val) {
    _num = val * 6;
  }

  void setdenomenator(int val) {
    _dem = val * 6;
  }

  int get getnumerator => _num;

  int get getdenominator => _dem;
}

void main() {
  Mathematics maths = new Mathematics();

  maths.setnumerator(10);
  maths.setdenomenator(5);

  print(maths.getnumerator);
  print(maths.getdenominator);
}
