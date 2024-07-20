import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({required this.isCheck,required this.taskTitle ,super.key});
  final bool isCheck;
  final String taskTitle;

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
          onChanged: null,
          //  onChanged: checkBoxchange,
        ));
  }
}
// (bool? value) {
//         setState(() {
//           check = value!;
//         });
//       }
 

