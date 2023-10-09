import 'package:flutter/material.dart';
import 'package:todo_app/addTodoTask.dart';
import 'package:todo_app/updateTodoTask.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ToDo")),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: (context),
                builder: (context){
                  return addTodoTask();
                }
            );
          },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                child: Text("${index+1}"),
              ),
              title: Text("My Todo"),
              subtitle: Text("1-12-2023"),
              trailing: Text("Pending"),
              onLongPress: (){
                showDialog(
                    context: (context),
                    builder: (context){
                      return AlertDialog(
                        title: Text("Actions"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              onTap: (){
                                Navigator.pop(context);
                                showModalBottomSheet(
                                    context: (context),
                                    builder: (context){
                                      return updateTodoTask();
                                    }
                                );
                              },
                              leading: Icon(Icons.edit),
                              title: Text("Update"),
                            ),
                            ListTile(
                              leading: Icon(Icons.delete),
                              title: Text("Delete"),
                            ),

                          ],
                        ),
                      );
                    }
                );
              },
            );
          },
          itemCount: 10,
        separatorBuilder: (context, index){
            return Divider(
              height: 4,
            );
        },
      ),
    );
  }
}



