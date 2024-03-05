void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

void main() {
  // Example: Printing the day for day 3
  printDayOfWeek(3);
}

void main() {
  int n1 = 0, n2 = 1, n3;
  print(n1); // Print the first number of the sequence
  print(n2); // Print the second number of the sequence
  for (int i = 2; i < 10; ++i) { // Loop to print the next 8 numbers
    n3 = n1 + n2;
    print(n3);
    n1 = n2;
    n2 = n3;
  }
}
