import 'package:flutter/material.dart';
import 'package:state_management_sample_todo/models/todo.dart';
import 'package:state_management_sample_todo/notifiers/todo_list.dart';
import 'package:state_management_sample_todo/providers/provider.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoList>(context, rebuildContext: false);
    print('build IncrementButton');

    return FloatingActionButton(
      onPressed: () {
        todoList.add(new Todo(id: '${todoList.list.length}', title: 'tituloTodo${todoList.list.length}'));
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
