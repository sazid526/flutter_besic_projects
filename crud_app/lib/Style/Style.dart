import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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

DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(decoration: BoxDecoration(
    color: colorWhite,border: Border.all(color: colorWhite,width: 1),
    borderRadius: BorderRadius.circular(4)
  ),
  child: child);
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
