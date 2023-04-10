import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("titulo"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 7),
            child:  const CircleAvatar(
              backgroundColor: Colors.green,
              child:  Text("SL"),
            ),
          )
        ],

      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
         )

      ),
    );
  }
}