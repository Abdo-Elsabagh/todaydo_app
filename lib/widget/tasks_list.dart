import 'package:flutter/material.dart';
import 'package:todaydo_app/model/task.dart';
import 'package:todaydo_app/widget/task_list.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList(this.tasks, {super.key});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isCheck: widget.tasks[index].isDone,
              taskTitle: widget.tasks[index].name,
              checkboxChange: (value) {
                setState(() {
                  widget.tasks[index].doneChenge();
                });
              });
        },
        itemCount: widget.tasks.length);
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
