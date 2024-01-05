import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  late final String taskTitle;
  final Function checkboxCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            checkboxCallback(newValue);
          },
          activeColor: Colors.lightBlueAccent,
        ));
  }
}
