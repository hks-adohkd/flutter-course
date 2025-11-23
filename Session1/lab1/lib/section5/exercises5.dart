Stream<String> messageStream() async* {
  String m1 = "Hello!";
  await Future.delayed(Duration(seconds: 1));
  yield m1;
  String m2 = "User";
  await Future.delayed(Duration(seconds: 1));
  yield m2;
}

void main() {
  messageStream().listen((s) => print(s), onDone: () => print("finished"));
}
