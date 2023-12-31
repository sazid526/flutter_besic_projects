import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker_app/homeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
