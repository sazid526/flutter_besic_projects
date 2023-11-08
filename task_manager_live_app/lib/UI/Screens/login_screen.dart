import 'package:flutter/material.dart';
import 'package:task_manager_live_app/UI/Screens/forgot_password_screen.dart';
import 'package:task_manager_live_app/UI/Screens/sign_up_screen.dart';
import 'package:task_manager_live_app/widgets/body_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BodyBackground(
            child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),
              Text("Get Started with",style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 24,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()) );
                }, child: Icon(Icons.arrow_circle_right_outlined)),
              ),
              const SizedBox(height: 45,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
              }, child: Center(
                child: Text("Forgot Password?",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54
                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  }, child: Text("Sign Up",style: TextStyle(
                      fontSize: 16
                  ),))
                ],
              )
            ],
          ),
        ),
      ),
    )));
  }
}
