import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  ValueChanged<bool?>? checkboxCallback;
  String taskTitle = ' ';
  GestureLongPressCallback? checkboxLongCallback;

  TaskTile(
      {required this.isChecked,
      required this.checkboxCallback,
      required this.taskTitle,
      required this.checkboxLongCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: checkboxLongCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
