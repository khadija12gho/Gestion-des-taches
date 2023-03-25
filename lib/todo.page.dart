import 'package:flutter/material.dart';
import 'package:stage/add.task.page.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC853FF),
        ),
        drawer: Drawer(
            backgroundColor: Color(0xFFF8E8FF),
            child: ListView(padding: EdgeInsets.zero, children: [
              const DrawerHeader(
                child: Text('Drawer Header'),
              ),
            ])),
        backgroundColor: Color(0xFFECD2F8),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFC853FF),
            child: Icon(
              Icons.add,
              color: Color.fromARGB(255, 255, 254, 254),
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddTaskPage()));
            }));
  }
}
