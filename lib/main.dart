import 'package:flutter/material.dart';
import 'package:stage/auth.dart';
// import 'package:stage/home.page.dart';
import 'package:stage/login.page.dart';
// import 'archive.page.dart';
// import 'register.page.dart';
import 'todo.page.dart';
// import 'Settings.page.dart';
// import 'add.task.page.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ToDoPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "Auth":(context) => const Auth(),
        
      },
    );
  }
}
