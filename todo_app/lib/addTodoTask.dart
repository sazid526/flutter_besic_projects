import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/todo_functional.dart';

class addTodoTask extends StatefulWidget {


  const addTodoTask({
    super.key, required this.addOnTap,
  });

  final Function(TodoFunction) addOnTap;

  @override
  State<addTodoTask> createState() => _addTodoTaskState();
}

class _addTodoTaskState extends State<addTodoTask> {


  final TextEditingController _addTextETcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Add New Todo",style: TextStyle(
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
                  hintText: "Enter your daily work",
              ),
              controller: _addTextETcontroller,
              validator: (String? value){
                if(value?.isEmpty == true){
                  return "Enter a value";
                }else{
                  return null;
                }
              },
            ),
            SizedBox(height: 18,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    TodoFunction todoFunction = TodoFunction(title: _addTextETcontroller.text.trim(),
                        currentDateTime: DateTime.now(),
                        updateDateTime: DateTime.now(),
                    );
                    widget.addOnTap(todoFunction);
                  }
                  Navigator.pop(context);
                },
                child: Text("Add",),
              ),
            )
          ],
        ),
      ),
    );
  }


}

