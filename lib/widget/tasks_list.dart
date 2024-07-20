import 'package:flutter/material.dart';
import 'package:todaydo_app/model/task.dart';
import 'package:todaydo_app/widget/task_list.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(
      name: 'go shopping',
    ),
    Task(name: 'buy a gift'),
    Task(name: 'repair the car'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isCheck: tasks[index].isDone, taskTitle: tasks[index].name);
        },
        itemCount: tasks.length);
    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTitle: tasks[0].name,
    //       isCheck: tasks[0].isDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[1].name,
    //       isCheck: tasks[0].isDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[2].name,
    //       isCheck: tasks[0].isDone,
    //     ),
    //   ],
    // );
  }
}
