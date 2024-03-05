Future<String> fetchData() async {
  // Simulating a network request or any asynchronous operation
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded successfully';
}

Future<void> loadData() async {
  print('Fetching data...');
  String data = await fetchData();
  print(data); // This will print after the fetchData future completes
}

void main() async {
  await loadData();
}


Future<String> fetchData() async {
  // Simulating a network request or any asynchronous operation
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded successfully';
}

void loadDataWithThen() {
  print('Fetching data...');
  fetchData().then((data) {
    print(data); // This will print after the fetchData future completes
  }).catchError((error) {
    // Handle errors if any
    print('An error occurred: $error');
  });
}

void main() {
  loadDataWithThen();
}
