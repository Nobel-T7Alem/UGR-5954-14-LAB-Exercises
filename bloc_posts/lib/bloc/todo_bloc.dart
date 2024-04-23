import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Event
abstract class TodoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchTodos extends TodoEvent {}

// State
class TodoState extends Equatable {
  final List<dynamic> todos;
  final bool isLoading;

  TodoState({this.todos = const [], this.isLoading = false});

  @override
  List<Object?> get props => [todos, isLoading];
}

// BLoC
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<FetchTodos>((event, emit) async {
      emit(TodoState(isLoading: true));
      final response = await http.get(Uri.parse('https://mocki.io/v1/4deedc38-4be2-4780-a78f-3c875e57e393'));
      if (response.statusCode == 200) {
        emit(TodoState(todos: json.decode(response.body)));
      } else {
        throw Exception('Failed to load todos');
      }
    });
  }
}
