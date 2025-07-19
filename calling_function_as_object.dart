void main() { 
  raman Raman = new raman();
  print(Raman.printname("world"));
}

class raman {
  String printname(String s) {
    return ("hello " + s);
  }
}
