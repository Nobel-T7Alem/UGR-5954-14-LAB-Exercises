int findHighestNumber(List<int> numbers) {
  // Assumes list is not empty and contains at least one number.
  int highest = numbers[0];
  for (int number in numbers) {
    if (number > highest) {
      highest = number;
    }
  }
  return highest;
}

void main() {
  List<int> numbers = [5, 9, 23, 1, 4, 23, 89, 16];
  print("The highest number is: ${findHighestNumber(numbers)}");
}


void printMapKeysAndValues(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print("$key: $value");
  });
}

void main() {
  Map<String, int> ageMap = {
    "Alice": 30,
    "Bob": 24,
    "Charlie": 29,
  };
  printMapKeysAndValues(ageMap);
}


List<T> removeDuplicates<T>(List<T> list) {
  return list.toSet().toList();
}

void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
  print("Original list: $numbers");
  List<int> numbersWithoutDuplicates = removeDuplicates(numbers);
  print("List after removing duplicates: $numbersWithoutDuplicates");
}
