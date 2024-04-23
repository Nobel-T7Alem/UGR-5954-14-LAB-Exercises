import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TodoProvider with ChangeNotifier {
  List<dynamic> _todos = [];

  List<dynamic> get todos => _todos;

  Future<void> fetchTodos() async {
    final response = await http.get(Uri.parse('https://mocki.io/v1/4deedc38-4be2-4780-a78f-3c875e57e393'));
    if (response.statusCode == 200) {
      _todos = json.decode(response.body);
      notifyListeners();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
