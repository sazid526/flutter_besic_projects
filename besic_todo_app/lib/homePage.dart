import 'package:besic_todo_app/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
  ];
  String item = '';

  MyInputOnChanged(content){
    setState(() {
      item = content;
    });
  }

  AddItem(){
    setState(() {
      toDoList.add({"item":item});
    });
  }

  DeleteItem(index){
    setState(() {
      toDoList.removeAt(index);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To Do App"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 70,
                        child: TextFormField(
                          onChanged: (content){
                            MyInputOnChanged(content);

                          },
                          decoration: appInputDecoration("List Item"),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          flex: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              AddItem();
                            },
                            child: Text("Add"),
                            style: appButtonStyle(),
                          ))
                    ],
                  )),
              Expanded(
                  flex: 90,
                  child: ListView.builder(
                      itemCount: toDoList.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: SizeBox50(Row(
                          children: [
                            Expanded(
                              flex: 80,
                              child: Text(toDoList[index]["item"].toString()),
                            ),
                            Expanded(
                                flex: 20,
                                child: TextButton(
                                    onPressed: () {
                                      DeleteItem(index);
                                    },
                                    child: Icon(Icons.delete)))
                          ],
                        )));
                      }))
            ],
          ),
        ));
  }
}
