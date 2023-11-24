import 'package:flutter/material.dart';
import 'package:task_manager_pre_app/Screen/onboarding/emailVerificationScreen.dart';
import 'package:task_manager_pre_app/Screen/onboarding/loginScreen.dart';
import 'package:task_manager_pre_app/Screen/onboarding/pinVerificationScreen.dart';
import 'package:task_manager_pre_app/Screen/onboarding/registrationScreen.dart';
import 'package:task_manager_pre_app/Screen/onboarding/setPasswordScreen.dart';
import 'package:task_manager_pre_app/Screen/onboarding/splashScreen.dart';
import 'package:task_manager_pre_app/Screen/task/newTaskListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager",
      initialRoute: '/login',
      routes: {
        '/':(context)=> SplashScreen(),
        '/login':(context)=> LoginScreen(),
        '/registration':(context)=> RegistrationScreen(),
        '/emailVerification':(context)=> EmailVerificationScreen(),
        '/pinVerification':(context)=> PinVerificationScreen(),
        '/setPassword':(context)=> SetPasswordScreen(),
        '/newTaskList':(context)=> NewTaskListScreen(),

      },
    );
  }
}
