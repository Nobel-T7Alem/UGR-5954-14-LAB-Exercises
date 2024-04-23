import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App with Provider',
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
      body: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          if (provider.todos.isEmpty) {
            return Center(
              child: RaisedButton(
                onPressed: () => provider.fetchTodos(),
                child: Text('Load Todos'),
              ),
            );
          }
          return ListView.builder(
            itemCount: provider.todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(provider.todos[index].title),
              );
            },
          );
        },
      ),
    );
  }
}
