import 'package:flutter/material.dart';

InputDecoration appInputDecoration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(

    ),
    labelText: label
  );
}

ButtonStyle appButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(12),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    ),
    textStyle: TextStyle(
      color: Colors.white
    )
  );
}

SizedBox SizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: child,

    )
    ,
  );
}


