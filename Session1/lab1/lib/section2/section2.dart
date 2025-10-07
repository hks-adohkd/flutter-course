void introduceLists() {
  // Create
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  // Read
  print('First fruit: ${fruits[0]}');
  // Update
  fruits[1] = 'Mango';
  // Add new
  fruits.add('Grapes');
  // Delete
  fruits.remove('Orange');
  print('All fruits: $fruits');
  print('Total: ${fruits.length}');
}

void introduceSets() {
  Set<String> cities = {'Paris', 'London', 'Tokyo'};
  cities.add('Rome'); // Add
  cities.add('Paris'); // Ignored (duplicate)
  cities.remove('Tokyo'); // Delete
  print('Cities: $cities');
  print('Contains Rome? ${cities.contains('Rome')}');
}

void introduceMaps() {
  Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 28};
  // Read
  print('Alice is ${ages['Alice']} years old.');
  // Create / Update
  ages['David'] = 22; // Add new
  ages['Bob'] = 31; // Update existing// Delete
  ages.remove('Charlie');
  print('All ages: $ages');
  print('Keys: ${ages.keys}');
  print('Values: ${ages.values}');
}

void introduceIterations() {
  List<String> fruits = ['Apple', 'Banana', 'Grapes'];
  // for loop
  for (int i = 0; i < fruits.length; i++) {
    print('Fruit $i: ${fruits[i]}');
  }
  // for-in
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  } // forEach
  fruits.forEach((f) => print('Fruit name: $f'));
}

void introduceSpreadAndNullAwareOps() {
  List<int> numbers = [1, 2, 3];
  List<int>? more = [4, 5];
  // Combine lists safely
  List<int> combined = [...numbers, ...?more];
  print(combined);
  // Null-aware operator
  int? value;
  print(value ?? 10); // prints 10 if value is null
}
