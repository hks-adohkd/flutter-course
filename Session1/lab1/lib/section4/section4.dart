// ***** 1. Introduce Error Handling *****
void introduceErrorHandling() {
  try {
    int result = 10 ~/ 0; // Integer division by zero
    print(result);
  } catch (e) {
    print('An error occurred: $e');
  } finally {
    print('This block always runs, even if an error occurs.');
  }
}

// ***** 2. Handling Specific Exceptions *****
void introduceHandlingSpecificExceptions() {
  try {
    List<int> numbers = [1, 2, 3];
    print(numbers[5]); // Out of range
  } on RangeError catch (e) {
    print('RangeError caught: $e');
  } catch (e) {
    print('Unknown error: $e');
  } finally {
    print('Done checking list.');
  }
}

// ******* 3. Custom Exceptions *******
class InvalidAgeException implements Exception {
  final String message;
  InvalidAgeException(this.message);
  @override
  String toString() => 'InvalidAgeException: $message';
}

void checkAge(int age) {
  if (age < 18) {
    throw InvalidAgeException('Age must be at least 18.');
  } else {
    print('Access granted.');
  }
}

void introduceCustomExceptions() {
  try {
    checkAge(15);
  } on InvalidAgeException catch (e) {
    print(e);
  } finally {
    print('Age verification completed.');
  }
}

// ***** 4. Error Propagation (rethrow) *****
void riskyOperation() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Error caught in riskyOperation: $e');
    rethrow; // Pass it up to higher-level function
  }
}

void introduceErrorPropagation() {
  try {
    riskyOperation();
  } catch (e) {
    print('Handled again in main: $e');
  } finally {
    print('Program completed.');
  }
}
