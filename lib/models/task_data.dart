import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  //TaskData({this.tasks});

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void taskAdd(String taskScript) {
    _tasks.add(Task(name: taskScript));
    notifyListeners();
  }

  void taskUpdate(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
