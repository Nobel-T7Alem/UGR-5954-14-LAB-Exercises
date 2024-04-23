import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'todo_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => TodoProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final todos = Provider.of<TodoProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Counter with Todos')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Counter: ${counter.count}', style: TextStyle(fontSize: 24)),
          ElevatedButton(onPressed: counter.increment, child: Text('Increment')),
          ElevatedButton(onPressed: counter.decrement, child: Text('Decrement')),
          ElevatedButton(onPressed: todos.fetchTodos, child: Text('Load Todos')),
          Expanded(
            child: ListView.builder(
              itemCount: todos.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos.todos[index]['title']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
