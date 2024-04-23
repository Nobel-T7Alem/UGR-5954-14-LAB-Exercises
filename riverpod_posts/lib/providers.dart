import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


final counterProvider = StateProvider<int>((ref) => 0);


final todoProvider = StateNotifierProvider<TodoNotifier, List<dynamic>>((ref) => TodoNotifier());

class TodoNotifier extends StateNotifier<List<dynamic>> {
  TodoNotifier() : super([]);

  void fetchTodos() async {
    final response = await http.get(Uri.parse('https:
    if (response.statusCode == 200) {
      state = json.decode(response.body);
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
