import 'package:flutter/material.dart';
import 'package:todaydo_app/screen/tasks_screen.dart';
import 'package:todaydo_app/splach_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachView(),
    );
  }
}
