import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_live_app/UI/Screens/login_screen.dart';
import 'package:task_manager_live_app/UI/Screens/main_bottom_nav_screen.dart';
import 'package:task_manager_live_app/widgets/body_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToLoginScreen();
  }

  void goToLoginScreen() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => token == null ? const LoginScreen() : const MainBottomNavScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BodyBackground(
      child: Center(child: SvgPicture.asset("assets/images/logo.svg")),
    ));
  }
}
