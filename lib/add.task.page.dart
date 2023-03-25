import 'package:flutter/material.dart';

class AddTaskPage extends StatefulWidget {
  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController taskController = TextEditingController();

  addTaskToFirebase() async {
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text("Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))))
          ],
          backgroundColor: Color(0xFFC853FF),
          title: Text("tasks"),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Container(
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: "Enter title"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(labelText: "Enter task"),
                ),
              ),
            ])));
  }
}
