import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task_manager_live_app/UI/Screens/login_screen.dart';
import 'package:task_manager_live_app/UI/controller/authentication_controller.dart';
import 'package:task_manager_live_app/app.dart';
import 'package:task_manager_live_app/data.network_caller/network_response.dart';

class NetworkCaller {
  Future postRequest(String url, {Map<String, dynamic>? body}) async {
    log(url);
    log(body.toString());
    try {
      final Response response = await post(Uri.parse(url),
          body: jsonEncode(body),
          headers: {
        "Content-type": "Application/json",
            "token" : AuthenticationController.token.toString()
      });
        log(response.statusCode.toString());
        log(response.body.toString());
      if (response.statusCode == 200) {
        return NetworkResponse(
            isSuccess: true,
            jsonResponse: jsonDecode(response.body),
            statusCode: 200);
      } else {
        return NetworkResponse(
            isSuccess: false,
            jsonResponse: jsonDecode(response.body),
            statusCode: response.statusCode);
      }
    } catch (e) {
      return NetworkResponse(isSuccess:false,errorMassage: e.toString());
    }
  }

  void backToLogin(){
    Navigator.pushAndRemoveUntil(TaskManagerApp.navigationKey.currentContext!, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
  }
}


