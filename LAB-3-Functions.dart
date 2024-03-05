double calculateAverage(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }
  double sum = 0;
  for (num number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

void main() {
  // Example list of numbers
  List<num> numbers = [10, 20, 30, 40, 50];

  // Calculate the average
  double average = calculateAverage(numbers);

  // Print the average
  print("The average is: $average");
}
