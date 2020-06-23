import 'package:flutter/material.dart';
import 'package:state_management_sample_todo/models/todo.dart';
import 'package:state_management_sample_todo/notifiers/todo_list.dart';
import 'package:state_management_sample_todo/providers/provider.dart';

class TodoListItemToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context, rebuildContext: false);
    final todoList = Provider.of<TodoList>(context, rebuildContext: false);
    print('build Toggle Item Button');

    return new RaisedButton(
      onPressed: (){
        todoList.edit(todo.id);
      },
      color: todo.done ? Colors.blue : Colors.red,
      child: new Icon(Icons.refresh, color: Colors.white70,),
    );
  }
}
