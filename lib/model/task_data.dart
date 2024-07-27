import 'package:flutter/material.dart';
import 'package:todaydo_app/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      name: 'go shopping',
    ),
    Task(name: 'buy a gift'),
    Task(name: 'repair the car'),
  ];
}
