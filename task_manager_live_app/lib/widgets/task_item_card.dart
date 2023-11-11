import 'package:flutter/material.dart';

class TaskItemCard extends StatelessWidget {
  const TaskItemCard({
    super.key,
  });

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
              Text("First Title",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              )),
              Text("This is Description"),
              Text("Time 12.2.2023"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Text(
                      "New",
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