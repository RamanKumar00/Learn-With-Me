// this is how extend work in the two different class itcan access the function and variable of the parent class by using extends keyword

void main() {
  bird Bird = bird();
  Bird.eating();
}

class animal {
  void eating() {
    print("yes");
  }
    void flying() {
      print("no");
    }
  
}

// class bird extends animal {} 

//now how the implements works in the two different class
class bird implements animal {
   void eating() {
    print("yes it can");
  }
    void flying() {
      print("no it can't");
    }
} 