import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {required this.isCheck,
      required this.taskTitle,
      required this.checkboxChange,
      required this.listTileDelete,
      super.key});
  final bool isCheck;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isCheck,
        onChanged: checkboxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
