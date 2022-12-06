import 'package:flutter/material.dart';

class TaskModel {
  final String _name, id;
  bool _isDone;

  TaskModel(this._name, this._isDone, this.id);

  bool get isDone => _isDone;

  String get name => _name;

  set isDone(bool done) {
    _isDone = done;
  }
}

class TasksTopic {
  final String name, id;
  final List<TaskModel> tasks;

  // TaskList({required this.name, required this.id,}): tasks = [];
  TasksTopic({required this.name, required this.id, this.tasks = const []});

  void addTask(TaskModel task) {
    tasks.add(task);
  }

  void addTasks(List<TaskModel> tasks) {
    tasks.addAll(tasks);
  }


}
