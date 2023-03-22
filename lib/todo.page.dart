import 'package:flutter/material.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC853FF),
        ),
        backgroundColor: Color(0xFFECD2F8),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Color(0xFFC853FF),
          icon: Icon(
            Icons.add,
            color: Color.fromARGB(255, 255, 254, 254),
          ),
          label: Text(""),
        ));
  }
}
