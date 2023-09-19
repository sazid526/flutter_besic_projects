import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Portfolio",style: TextStyle(
          fontSize: 22
        ),)),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 5),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/sazid.jpg"),
                    radius: 45,

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        Text("Md. Tanven Arefin Sazid",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent
                        ),),
                        Text("App Developer",style: TextStyle(
                          fontSize: 16
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Icon(Icons.school,size: 40,color: Colors.orangeAccent,),
                ),
                Text("Daffodil Internatonal University",style: TextStyle(
                  fontSize: 20
                ),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Icon(Icons.note_alt,size: 38,color: Colors.orangeAccent,),
                ),
                Text("Portfolio Projects",style: TextStyle(
                    fontSize: 20,
                ),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Icon(Icons.location_on,size: 40,color: Colors.orangeAccent,),
                ),
                Text("Dhaka , Bangladesh",style: TextStyle(
                    fontSize: 20
                ),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Icon(Icons.email,size: 35,color: Colors.orangeAccent,),
                ),
                Text("arefin15-14526@diu.edu.bd",style: TextStyle(
                    fontSize: 20
                ),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Icon(Icons.phone,size: 40,color: Colors.orangeAccent,),
                ),
                Text("01902175078",style: TextStyle(
                    fontSize: 20
                ),)
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("This is Md. Tanven Arefin Sazid. I am studying in BSc in CSE at Daffodil International University. "
                  "Now I working with some project in Flutter for Building my portfolio.",style: TextStyle(
                fontSize: 14
              ),),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Created By Sazid",style: TextStyle(
                  fontSize: 14
              ),),
            ),


          ],
        ),
      ),
    );
  }
}
