import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stage/Settings.page.dart';
import 'package:stage/add.task.page.dart';
import 'package:stage/sql.helper.dart';

import 'archive.page.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFC853FF),
        ),
        drawer: Drawer(
            backgroundColor: const Color(0xFFF8E8FF),
            child: ListView(padding: EdgeInsets.zero, children: [
              UserAccountsDrawerHeader(
                accountName: Text("Your Name"),
                accountEmail: Text(user.email!),
              ),
              ListTile(
                leading: Icon(Icons.task),
                title: Text('Tasks'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToDoPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text('Archive'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ArchivePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Deleted'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              )
            ])),
        backgroundColor: const Color(0xFFECD2F8),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFFC853FF),
            child: const Icon(
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
