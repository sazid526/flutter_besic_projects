import 'package:flutter/material.dart';
import 'package:task_manager_live_app/widgets/body_background.dart';
import 'package:task_manager_live_app/widgets/profile_summery_card.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummeryCard(
              enableOnTap: false,
            ),
            Expanded(
              child: BodyBackground(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Update Profile",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        PhotoPicker(),
                        SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Subject"),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Subject"),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Subject"),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Subject"),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Subject"),
                        ),
                        SizedBox(height: 8,),
                        SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(Icons.arrow_circle_right_outlined)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  Container PhotoPicker() {
    return Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)
                                    )
                                  ),
                                  child: Center(
                                    child: Text("Photo",style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  ),
                            )),
                            Expanded(
                              flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Container(
                                    child: Text("Empty"),
                            ),
                                )),
                          ],
                        ),
                      );
  }
}
