import 'package:flutter/material.dart';
import 'package:state_management_sample_todo/models/todo.dart';
import 'package:state_management_sample_todo/providers/provider.dart';

class TodoListItemToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context,);
    print('build Toggle Item Button');

    return new RaisedButton(
      onPressed: (){
        todo.toggle();
      },
      color: todo.done ? Colors.blue : Colors.red,
      child: new Icon(Icons.refresh, color: Colors.white70,),
    );
  }
}
