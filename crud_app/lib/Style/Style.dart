import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';


const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

SvgPicture ScreenBackground(context){
  return SvgPicture.asset(
    "assets/images/screen-back.svg",
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,
    alignment: Alignment.center,
  );
}

void ErrorToast(msg){
  Fluttertoast.showToast(
      msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colorRed,
    textColor: colorWhite,
    fontSize: 16
  );
}

void SuccessToast(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorGreen,
      textColor: colorWhite,
      fontSize: 16
  );
}

DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(decoration: BoxDecoration(
    color: colorWhite,border: Border.all(color: colorWhite,width: 1),
    borderRadius: BorderRadius.circular(4)
  ),
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: child,),
  );
}


InputDecoration MyAppInputDecoration(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(
        color: colorGreen,width: 1
      ),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(
        color: colorWhite,width: 0
      )
    ),
    border: OutlineInputBorder(),
    labelText: label
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
  );
}

Ink SuccessButtonChild(ButtonText){
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(6)
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(ButtonText,style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15
      ),),
    ),
  );
}