import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stage/Settings.page.dart';
import 'package:stage/add.task.page.dart';
// import 'package:stage/sql.helper.dart';

import 'archive.page.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC853FF),
        leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                  )),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFF8E8FF),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Your Name"),
              accountEmail: Text("user.email!"),
            ),
            ListTile(
              leading: const Icon(Icons.task,color: Colors.black,),
              title: const Text('Tasks'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ToDoPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.archive,color: Colors.black,),
              title: const Text('Archive'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ArchivePage()));
              },
            ),
            const ListTile(
              leading: Icon(Icons.delete,color: Colors.black,),
              title: Text('Deleted'),
            ),
            ListTile(
              leading: const Icon(Icons.settings,color: Colors.black,),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout,color: Colors.black,),
              title: const Text('Log Out'),
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
            )
          ],
        ),
      ),
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
              MaterialPageRoute(builder: (context) => const AddTaskPage()));
        },
      ),
    );
  }
}
