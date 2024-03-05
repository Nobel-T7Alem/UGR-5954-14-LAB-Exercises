void functionThatThrows() {
  throw Exception('This is a custom exception');
}

void main() {
  try {
    functionThatThrows();
  } catch (e) {
    print('Caught an exception: $e');
  }
}


void functionThatThrowsFormatException() {
  throw FormatException('Invalid format');
}

void main() {
  try {
    functionThatThrowsFormatException();
  } on FormatException catch (e) {
    print('Caught a FormatException: $e');
  } catch (e) {
    print('Caught an exception of a different type: $e');
  }
}


void functionThatMayThrow({bool shouldThrow = false}) {
  if (shouldThrow) {
    throw Exception('An error occurred');
  }
}

void main() {
  try {
    functionThatMayThrow(shouldThrow: true);
  } catch (e) {
    print('An exception was caught: $e');
  } finally {
    print('This always runs, regardless of exceptions');
  }
}
