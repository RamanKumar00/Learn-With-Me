void main() {
  animal a = animal();
  a.talk();

  human h = human();
  h.reproduce();
}

class animal with Walk, Talk, Reproduce {}

class human with Walk, Talk, Reproduce {}

mixin Walk {
  void walk() {}
}

mixin Talk {
  void talk() {
    print("i can talk ");
  }
}

mixin Reproduce {
  void reproduce() {
    print("i can reproduce young onces");
  }
}
// let under mixin likt that , i m not your parents but i can teach you skills 