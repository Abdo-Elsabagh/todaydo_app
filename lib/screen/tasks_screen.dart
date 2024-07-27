import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/Imformation_User/information_user.dart';
import 'package:todaydo_app/model/task_data.dart';
import 'package:todaydo_app/screen/add_task_screen.dart';
import 'package:todaydo_app/widget/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTaskTitle) {
                        // setState(() {
                        //   tasks.add(Task(name: newTaskTitle));
                        //   Navigator.pop(context);
                        // });
                      }))),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: Colors.indigo[400],
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.teal[400],
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const informationUser(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ToDayDo',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                '${Provider.of<TaskData>(context).tasks.length} Tasks',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const TasksList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
