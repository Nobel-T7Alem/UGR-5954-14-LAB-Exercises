import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider.state);
    final todos = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Counter with Todos')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Counter: ${count.state}', style: TextStyle(fontSize: 24)),
          ElevatedButton(
            onPressed: () => count.state++,
            child: Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () => count.state--,
            child: Text('Decrement'),
          ),
          ElevatedButton(
            onPressed: () => ref.read(todoProvider.notifier).fetchTodos(),
            child: Text('Load Todos'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index]['title']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
