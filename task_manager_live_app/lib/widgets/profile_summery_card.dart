import 'package:flutter/material.dart';
import 'package:task_manager_live_app/UI/Screens/edit_profile_screen.dart';

class ProfileSummeryCard extends StatelessWidget {
  const ProfileSummeryCard({
    super.key, this.enableOnTap = true,
  });

  final bool enableOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if(enableOnTap){
          Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
        }
      },
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text("Sazid Arefin",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
      ),),
      subtitle: Text("sazidarefin@gmail.com",style: TextStyle(
        color: Colors.white,

      ),),
      trailing: enableOnTap?Icon(Icons.arrow_circle_right_outlined,color: Colors.white,):null,
      tileColor: Colors.green,
    );
  }
}