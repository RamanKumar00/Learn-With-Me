
void main() {
  Map userData = userMap(name:"raman", userclass:3, age:20);
  print(userData);
}

Map userMap({String? name, int? age, String? gender, int? userclass}) {//we make it nullable so that we can write or leave that varible with assign any value 
  return {"name": name, "age": age, "gender": gender, "userclass": userclass};
}
