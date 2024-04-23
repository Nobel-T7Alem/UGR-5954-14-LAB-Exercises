import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/todo.dart';

class TodoProvider with ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      List<dynamic> todoJson = json.decode(response.body);
      _todos = todoJson.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
