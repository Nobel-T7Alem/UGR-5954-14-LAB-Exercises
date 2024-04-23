import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/todo_bloc.dart';
import 'bloc/todo_event.dart';
import 'bloc/todo_state.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => TodoBloc()..add(LoadTodos()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App with BLoC',
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodosLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TodosLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todos[index].title),
                );
              },
            );
          } else {
            return Center(child: Text('Failed to load todos'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<TodoBloc>().add(LoadTodos()),
        tooltip: 'Reload Todos',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
