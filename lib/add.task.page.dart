import 'package:flutter/material.dart';
import 'package:stage/sql.helper.dart';
import 'todo.page.dart';

class AddTaskPage extends StatefulWidget {
  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController taskController = TextEditingController();

  // List<Map<String, dynamic>> _journals = [];

  // bool _isLoading = true;
  // void _refreshJournals() async {
  //   final data = await SQLhelper.getItems();
  //   setState(() {
  //     _journals = data;
  //     _isLoading = false;
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _refreshJournals();
  // }

  // void _showForm(int? id) async {
  //   if (id != null) {
  //     final existingJournal =
  //         _journals.firstWhere((element) => element["id"] == id);
  //     titleController.text = existingJournal["title"];
  //     taskController.text = existingJournal["task"];
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFC853FF),
          leading: TextButton(
            onPressed: () {},
            child: Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
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
