import 'package:flutter/material.dart';
import 'package:task_manager_live_app/UI/Screens/login_screen.dart';
import 'package:task_manager_live_app/widgets/body_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              const SizedBox(height: 24,),
              Text("Join With Us",style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 24,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "First Name",
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Mobile",
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),

              const SizedBox(height: 16,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){

                }, child: Icon(Icons.arrow_circle_right_outlined)),
              ),
              const SizedBox(height: 45,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have an account?",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54
                  ),),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Sign In",style: TextStyle(
                      fontSize: 16
                  ),))
                ],
              ),

            ],
          ),
        ),
      ),
    )));
  }
}
