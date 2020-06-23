import 'package:flutter/material.dart';
import 'package:state_management_sample_todo/models/todo.dart';
import 'package:state_management_sample_todo/providers/provider.dart';

class TodoListItemDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context);
    print('rebuilding Todo List Item Display');

    return new Text(
      '${todo.title}: ${todo.done}',
      style: TextStyle(fontSize: 16.0),
    );
  }
}
