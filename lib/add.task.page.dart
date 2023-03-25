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
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                    onPressed: () {},
                    child: const Text("Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))))
          ],
          backgroundColor: const Color(0xFFC853FF),
          title: const Text("tasks"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                child: TextField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: "Enter title"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextField(
                  controller: taskController,
                  decoration: const InputDecoration(labelText: "Enter task"),
                ),
              ),
            ])));
  }
}
