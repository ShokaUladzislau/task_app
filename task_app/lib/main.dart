import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';

void main(List<String> args) {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  List tasks = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
