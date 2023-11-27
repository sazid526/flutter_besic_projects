import 'package:flutter/material.dart';
import 'package:task_manager_live_app/data.network_caller/models/task.dart';
import 'package:task_manager_live_app/widgets/task_item_card.dart';

class TaskItemCard extends StatelessWidget {
  const TaskItemCard({
    super.key, required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.title ?? " ",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              )),
              Text(task.description ?? " "),
              Text("Time: ${task.createdDate}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Text(
                      task.status ?? "New",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  Wrap(
                    children: [
                      TextButton(onPressed: (){

                      }, child: Icon(Icons.delete,color: Colors.red,)),
                      TextButton(onPressed: (){

                      }, child: Icon(Icons.edit,color: Colors.green,))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
