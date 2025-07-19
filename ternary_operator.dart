void main() {
  int age = 50;
  String vote = voteFunction(age);
  print(vote);
}

String voteFunction(int age) {
  String result = age >= 18 && age < 100
      ? "you can vote"
      : age >= 100
      ? "are you sure? you are living"
      : age <= 0
      ? "you are not born"
      : "you can not vote";
  return result;
}
