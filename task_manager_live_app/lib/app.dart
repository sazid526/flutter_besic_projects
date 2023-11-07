import 'package:flutter/material.dart';
import 'package:task_manager_live_app/UI/Screens/spashScreen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
