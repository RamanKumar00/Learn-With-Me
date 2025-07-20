void main() {
  Animal animal = Animal();
  animal.makeSound();  // Output: Animal makes a sound

  Dog dog = Dog();
  dog.makeSound();     // Output: Dog barks
}

class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}
