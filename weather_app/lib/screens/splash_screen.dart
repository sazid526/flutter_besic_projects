import 'package:flutter/material.dart';
import 'package:weather_app/worker/worker.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  void startApp() async {
    worker instance = worker(location: "Mumbai");
    await instance.getData();
    print(instance.airSpeed);
  }

  @override
  void initState() {
    // TODO: implement initState
  startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sdfga"),
      ),

      body: Text("gfgasd"),

    );
  }
}
