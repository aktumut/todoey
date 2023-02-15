import 'package:flutter/material.dart';

class Task {
  String name = '';
  bool isDone = false;

  Task({required this.name, this.isDone = false});

  ValueChanged<bool?>? toggleDone() {
    isDone = !isDone;
  }
}
