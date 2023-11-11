import 'package:flutter/material.dart';
import 'package:task_manager_live_app/UI/Screens/add_new_task_screen.dart';
import 'package:task_manager_live_app/widgets/profile_summery_card.dart';
import 'package:task_manager_live_app/widgets/summery_card.dart';
import 'package:task_manager_live_app/widgets/task_item_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:   FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewTaskScreen()));
      },child: Icon(Icons.add),),
        body: SafeArea(
      child: Column(
        children: [
          ProfileSummeryCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SummeryCard(count: "62", title: "New"),
                  SummeryCard(count: "92", title: "In Progress"),
                  SummeryCard(count: "25", title: "Complited"),
                  SummeryCard(count: "36", title: "Cancelled"),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
              return TaskItemCard();
            }),
          ),
        ],
      ),
    ));
  }
}


