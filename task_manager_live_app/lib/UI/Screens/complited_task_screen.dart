import 'package:flutter/material.dart';

class ComplitedTaskScreen extends StatefulWidget {
  const ComplitedTaskScreen({Key? key}) : super(key: key);

  @override
  State<ComplitedTaskScreen> createState() => _ComplitedTaskScreenState();
}

class _ComplitedTaskScreenState extends State<ComplitedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Complited"),
      ),
    );
  }
}
