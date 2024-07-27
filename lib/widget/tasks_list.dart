import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/model/task.dart';
import 'package:todaydo_app/model/task_data.dart';
import 'package:todaydo_app/widget/task_list.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isCheck:  Provider.of<TaskData>(context).tasks[index].isDone,
              taskTitle:  Provider.of<TaskData>(context).tasks[index].name,
              checkboxChange: (value) {
                // setState(() {
                //   widget.tasks[index].doneChenge();
                // });
              });
        },
        itemCount: Provider.of<TaskData>(context).tasks.length);
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
