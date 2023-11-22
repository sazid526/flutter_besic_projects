import 'package:flutter/material.dart';
import 'package:task_manager_pre_app/Style/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ScreenBackground(context),
        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get Started With",
                style: HeadText(colorDarkBlue),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "Learn with rabbil hasan",
                style: Head6Text(colorDark),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: AppInputDecoration("Email Address"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: AppInputDecoration("Password"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: SuccessButtonChild("Login"),
                  style: AppButtonStyle(),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
