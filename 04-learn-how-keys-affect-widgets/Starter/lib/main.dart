import 'package:flutter/material.dart';

import 'utils/todo_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({
    Key key,
  }) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Widget> todos = [
    Item(),
    Item(),
  ];

  swapTodos() {
    setState(() {
      todos.insert(1, todos.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Column(children: todos),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        onPressed: swapTodos,
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String todo = UniqueTodoGenerator.getTodo();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            todo,
            style: Theme.of(context).textTheme.headline6,
          ),
          Icon(Icons.check_circle_outline_outlined),
        ],
      ),
    );
  }
}
