// ******* 1. Classes and Objects *******
class Car {
  String? brand;
  int? year;
  void start() {
    print('$brand is starting...');
  }
}

void introduceClassesAndObjects() {
  Car myCar = Car();
  myCar.brand = 'Toyota';
  myCar.year = 2022;
  myCar.start();
  print('Brand: ${myCar.brand}, Year: ${myCar.year}');
}

// ******* 2. Constructors *******
class Student {
  String name;
  int grade;
  // Default constructor
  Student(this.name, this.grade);
  // Named constructor
  Student.guest() : name = 'Guest Student', grade = 0;
  void info() => print('Student: $name, Grade: $grade');
}

void introduceConstructors() {
  var s1 = Student('Alice', 10);
  var s2 = Student.guest();
  s1.info();
  s2.info();
}

// ******* 3. Inheritance *******
class Animal {
  String name;
  Animal(this.name);
  void makeSound() => print('$name makes a sound');
}

class Dog extends Animal {
  Dog(String name) : super(name);
  void bark() => print('$name barks loudly!');
}

void introduceInheritance() {
  var dog = Dog('Buddy');
  dog.makeSound();
  dog.bark();
}

// ******* 4. Mixins *******
mixin CanFly {
  void fly() => print('Flying high!');
}
mixin CanSwim {
  void swim() => print('Swimming fast!');
}

class Bird with CanFly {}

class Duck with CanFly, CanSwim {}

void introduceMixins() {
  var bird = Bird();
  var duck = Duck();
  bird.fly();
  duck.fly();
  duck.swim();
}

// ******* 5. Abstract Classes *******
abstract class Vehicle {
  void move(); // abstract method
}

class MyCar extends Vehicle {
  @override
  void move() => print('Car is moving');
}

class Bike extends Vehicle {
  @override
  void move() => print('Bike is moving');
}

void introduceAbstractClasses() {
  Vehicle v1 = MyCar();
  Vehicle v2 = Bike();
  v1.move();
  v2.move();
}
