import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(86.0),
          
        child:AppBar(backgroundColor: Color(0xFFC853FF),
      title: Text("Settings", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
      
      )
      ),),
      body:ListTile(
              title: const Text('Tiltle',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
              },
      )
      


      //  Text(
      //   "Archive",
      //   style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //       fontFamily: "Inter"),
      // ),
    );
  }
}