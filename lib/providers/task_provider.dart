import 'package:alfred/providers/models/task.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TasksProvider with ChangeNotifier {
  // final List<TaskModel> _demoTasks = [
  //   TaskModel("Task1", true, "1"),
  //   TaskModel("Task2", false, "2"),
  //   TaskModel("Task3", true, "3"),
  //   TaskModel("Task4", false, "4"),
  //   TaskModel("Task5", false, "5"),
  //   TaskModel("Task6", false, "6"),
  //   TaskModel("Task7", false, "7"),
  //   TaskModel("Task8", false, "8"),
  //   TaskModel("Task9", true, "9"),
  //   TaskModel("Task10", false, "10"),
  //   TaskModel("Task11", false, "11"),
  // ];
  // final TasksTopic _demoTasksTopic = TasksTopic(
  //   name: "list title 1",
  //   id: "1",
  // );

  List<TasksTopic> get topics {
    List<TasksTopic> list = [];
    Random r = Random();
    for (int i = 0; i < 10; i++) {
      TasksTopic topic = TasksTopic(
        name: "list title $i",
        id: "$i",
      )..addTasks(List.generate(r.nextInt(10),
          (i) => TaskModel("task$i", r.nextInt(10) % 3 == 0, "$i")));
      list.add(topic);
    }
    return [...list];
  }

  // TaskModel findById(String id) {
  //   return _demoTasksTopic.tasks.firstWhere((task) => task.id == id);
  // }
}
