import 'package:flutter/material.dart';

class updateTodoTask extends StatelessWidget {
  const updateTodoTask({
    super.key,
  });

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
          ),
          SizedBox(height: 18,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){

              },
              child: Text("Update",),
            ),
          )
        ],
      ),
    );
  }
}