import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double result = 0;

  Map<String, double> addNumber = {
    "number1" : 0,
    "number2" : 0,
    "number3" : 0,
  };

  @override
  Widget build(BuildContext context) {

    totalNumber(myKey,myValue){
      setState(() {
        addNumber.update(myKey, (value) => double.parse(myValue));
      });
    }

    addAllNumber(){
      setState(() {
        result= addNumber["number1"]!+ addNumber["number2"]!+addNumber["number3"]!;
      });
    }
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Sum App"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Sum = ${result.toString()}"),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Input first number",
                enabledBorder: OutlineInputBorder(
                  gapPadding: 3
                ),
                focusedBorder: OutlineInputBorder(


                ),
              ),
              onChanged: (value){
                totalNumber("number1", value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Input Second number",
                  enabledBorder: OutlineInputBorder(
                      gapPadding: 10
                  ),
                focusedBorder: OutlineInputBorder(

                )
              ),
              onChanged: (value){
                totalNumber("number2", value);
              },
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: ElevatedButton(
                onPressed: (){
                  addAllNumber();
                },
                child: Text("Add")

            ),
          )
        ],
      ),
    );
  }
}




