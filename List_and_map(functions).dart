void main() {
  String name = "Raman Kumar";
  int age = 21;
  bool gender = true;
  List<String> fruits = ["apple", "mango", "grapes"];
  Map<String, dynamic> myData = {
    "name": name,
    "age": age,
    "gender": gender,
    "fruits": fruits,
  };
  fruits.add("banana");
  fruits.addAll(["coconut", "litchi"]);
  fruits.sort();
  bool val = fruits.contains('black grapes');
  var result = fruits.where(
    (elements) => elements == "grapes" || elements == 'banana',
  );
  // print(result);
  // print(val);
  // print(fruits);
  print(myData);
  print(myData["age"]);
}
