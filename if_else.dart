void main() {
  int age = 100;
  String vote = voteFunction(age);
  print(vote);
}

String voteFunction(int age) {
  if (age >= 100) {
    return "you are too old to vote";
  } else if (age >= 18 && age < 80) {
    return "you can vote";
  } else {
    return "you can not vote";
  }
}
