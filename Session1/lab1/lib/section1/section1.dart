// ********* 1. Variables, Types, and Null Safety *********
void introduceDart() {
  int age = 25; // Non-nullable
  double height = 1.75;
  String name = 'Alice';
  //bool isStudent = true;

  // Nullable variable
  String? nickname;
  nickname = null;

  print('$name is $age years old, height: $height m');
  print('Nickname: $nickname');
}

// ********* 2. Control Structures *********
void introduceControlFlow() {
  int score = 82;

  if (score >= 90) {
    print('Excellent');
  } else if (score >= 75) {
    print('Good');
  } else {
    print('Needs improvement');
  }

  for (int i = 1; i <= 3; i++) {
    print('Attempt $i');
  }

  switch (score ~/ 10) {
    case 10:
    case 9:
      print('Grade: A');
      break;
    case 8:
      print('Grade: B');
      break;
    default:
      print('Grade: C or below');
  }
}

// ********* 3. Functions, Optional Parameters, and Arrow Syntax *********
int add(int a, [int b = 0]) => a + b; // optional positional

void greet(String name, {String title = 'Mr./Ms.'}) {
  print('Hello $title $name');
}

void demonstrate() {
  print(add(5, 3)); // 8
  print(add(5)); // 5
  greet('Alice'); // Hello Mr./Ms. Alice
  greet('Bob', title: 'Dr.'); // Hello Dr. Bob
}
