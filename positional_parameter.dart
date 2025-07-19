void main() {
  Map userData = userMap("Raman", 20, "M", 12);
  print(userData);
}

Map userMap(String name, int age, String gender, int userclass) {
  return {"name": name, "age": age, "gender": gender, "userclass": userclass};
}
