import 'package:flutter/material.dart';
import 'package:todo_app/todo_functional.dart';

class updateTodoTask extends StatefulWidget {
  const updateTodoTask({
    super.key, required this.onTodoUpdate,required this.todoFunction
  });

  final TodoFunction todoFunction;
  final Function(String) onTodoUpdate;

  @override
  State<updateTodoTask> createState() => _updateTodoTaskState();
}

class _updateTodoTaskState extends State<updateTodoTask> {

  late final TextEditingController _updateTextETcontroller = TextEditingController(text: widget.todoFunction.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Update Todo",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close))
            ],
          ),
          SizedBox(height: 10,),
          TextFormField(
            maxLines: 4,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                hintText: "Update your work"
            ),
            controller: _updateTextETcontroller,
          ),
          SizedBox(height: 18,),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                widget.onTodoUpdate(_updateTextETcontroller.text.trim());
                Navigator.pop(context);
              },
              child: Text("Update",),
            ),
          )
        ],
      ),
    );
  }
}