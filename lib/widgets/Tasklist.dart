import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/TaskTile.dart';

class TasksList extends StatelessWidget {
  bool isChecked = false;
  bool checkboxState = false;

  ValueChanged<bool?>? checkboxCallback(bool? checkboxState) {
    // setState(() {
    //   isChecked = checkboxState!;
    // });
  }

  int itemCount = 1;

  ValueChanged<bool?>? toggleCheckboxState;

  String taskTitle = ' ';

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                taskData.taskUpdate(taskData.tasks[index]);
              },
              checkboxLongCallback: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
