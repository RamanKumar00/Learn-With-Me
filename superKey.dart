void main() {
  Mobilephone  mobilephone = Mobilephone("s23", "Samsung");
}

class electronics {

  electronics(String brand){
    print("this is a electronics constructor - $brand");
  }
  double height = 56;
  double width = 56;
  double thickness = 56;
}

class Mobilephone extends electronics{
  Mobilephone(String model,String brand):super (brand){
    print("this is a MobilePhone Constructor - $model");
  }
}
