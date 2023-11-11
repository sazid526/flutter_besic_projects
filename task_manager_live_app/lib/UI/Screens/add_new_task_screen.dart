import 'package:flutter/material.dart';
import 'package:task_manager_live_app/widgets/body_background.dart';
import 'package:task_manager_live_app/widgets/profile_summery_card.dart';
import 'package:task_manager_live_app/widgets/summery_card.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummeryCard(),
            Expanded(
                child: BodyBackground(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Add New Task",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Subject"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: 7,
                        decoration: InputDecoration(hintText: "Description"),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.arrow_circle_right_outlined)),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
