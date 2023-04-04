import 'package:flutter/material.dart';
// import 'todo.page.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddTaskPageState createState() {
    return _AddTaskPageState();
  }
}

class _AddTaskPageState extends State<AddTaskPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController taskController = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECD2F8),
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: const Color(0xFFC853FF),
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            'Delete',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                  onPressed: () async {
                    // if (id == null) {
                    //   await _addItem();
                    // }
                    // if (id != null) {
                    //   // await _updateItem(id);
                    // }
                    titleController.text = "";
                    taskController.text = "";
                  },
                  child: const Text("Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
