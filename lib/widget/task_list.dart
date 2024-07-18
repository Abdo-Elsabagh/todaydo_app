import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('go shopping'),
      trailing: TaskChechBox(),
    );
  }
}

class TaskChechBox extends StatefulWidget {
  const TaskChechBox({
    super.key,
  });

  @override
  State<TaskChechBox> createState() => _TaskChechBoxState();
}

class _TaskChechBoxState extends State<TaskChechBox> {
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: check,
      onChanged: (value) {
        setState(() {
          check = value;
        });
      },
    );
  }
}
