import 'package:flutter/material.dart';
import 'package:state_management_sample_todo/models/todo.dart';
import 'package:state_management_sample_todo/notifiers/todo_list.dart';
import 'package:state_management_sample_todo/providers/change_notifier_provider.dart';
import 'package:state_management_sample_todo/providers/provider.dart';
import 'package:state_management_sample_todo/widgets/todo_list_item_wdt.dart';

class TodoListWdt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoList>(context);

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: todoList.list.length,
      itemBuilder: (context, index) {
        return ChangeNotifierProvider<Todo>(
          notifier: todoList.list[index],
          child: new TodoListItemWdt()
        );
      },
    );
  }
}
