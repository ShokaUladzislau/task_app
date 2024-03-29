import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task_app/models/task.dart';
import 'package:task_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent))),
              cursorColor: Colors.lightBlueAccent,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FilledButton(
              onPressed: () {
                if (newTaskTitle.isNotEmpty) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                } else {
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all(LinearBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
