import 'package:flutter_bloc/flutter_bloc.dart';
import 'todo_event.dart';
import 'todo_state.dart';
import '../models/todo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodosLoading()) {
    on<LoadTodos>(_onLoadTodos);
  }

  Future<void> _onLoadTodos(LoadTodos event, Emitter<TodoState> emit) async {
    emit(TodosLoading());
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if (response.statusCode == 200) {
        List<Todo> todos = (json.decode(response.body) as List)
            .map((i)
