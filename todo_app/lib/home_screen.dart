import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/addTodoTask.dart';
import 'package:todo_app/updateTodoTask.dart';
import 'package:todo_app/todo_functional.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<TodoFunction> todoList = [];


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
                  return addTodoTask(
                    addOnTap: (TodoFunction todoFunction){
                      addTodo(todoFunction);
                    },
                  );
                }
            );
          },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: todoList.length,
          itemBuilder: (context,index){

          final TodoFunction todoFunction = todoList[index];

            return ListTile(
              leading: CircleAvatar(
                child: Text("${index+1}"),
              ),
              title: Text(todoFunction.title),
              subtitle: Text(DateFormat("h:mm:ss a dd:MM:yyyy").format(todoFunction.currentDateTime)),
              trailing: Text(todoFunction.status),
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
                                      return updateTodoTask(
                                        todoFunction: todoFunction,
                                        onTodoUpdate: (String updatedTitleText){
                                          updateTodo(index, updatedTitleText);
                                        },
                                      );
                                    }
                                );
                              },

                              leading: Icon(Icons.edit),
                              title: Text("Update"),
                            ),
                            ListTile(
                              onTap: (){
                                 deleteTodo(index);
                                 Navigator.pop(context);
                              },

                              leading: Icon(Icons.delete),
                              title: Text("Delete"),
                            ),


                          ],
                        ),
                      );
                    }
                );
              },
              onTap: (){
                String currentStatus = todoFunction.status == "pending" ? "done" : "pending";
                updateTodoStatus(index, currentStatus);
              },
              tileColor: todoFunction.status == "done" ? Colors.greenAccent.shade100 : null,
            );
          },

        separatorBuilder: (context, index){
            return Divider(
              height: 4,
            );
        },
      ),
    );
  }

  void addTodo(TodoFunction todoFunction){
    todoList.add(todoFunction);
    setState(() {

    });
  }

  void deleteTodo(index){
    todoList.removeAt(index);
    setState(() {

    });
  }

  void updateTodo(index, String updateTitle){
    todoList[index].title = updateTitle;
    setState(() {

    });
  }

  void updateTodoStatus(index, String status){
    todoList[index].status = status;
    setState(() {

    });
  }
}



