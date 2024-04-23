import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/todo_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => TodoBloc()),
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
    return Scaffold(
      appBar: AppBar(title: Text('Counter with Todos')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text('Counter: ${state.counterValue}', style: TextStyle(fontSize: 24));
            },
          ),
          ElevatedButton(
            onPressed: () => context.read<CounterBloc>().add(Increment()),
            child: Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () => context.read<CounterBloc>().add(Decrement()),
            child: Text('Decrement'),
          ),
          ElevatedButton(
            onPressed: () => context.read<TodoBloc>().add(FetchTodos()),
            child: Text('Load Todos'),
          ),
          Expanded(
            child: BlocBuilder<TodoBloc, TodoState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: state.todos.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.todos[index]['title']),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
