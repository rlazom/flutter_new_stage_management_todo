import 'package:flutter/material.dart';
import 'package:state_management_sample_todo/notifiers/todo_list.dart';
import 'package:state_management_sample_todo/providers/change_notifier_provider.dart';
import 'package:state_management_sample_todo/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<TodoList>(
        notifier: TodoList(),
        dispose: (todoList) => todoList.dispose(),
        child: MyHomePage(
          title: 'Flutter Demo Home Page',
        ),
      )
    );
  }
}