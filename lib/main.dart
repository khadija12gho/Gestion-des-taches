import 'package:flutter/material.dart';
import 'package:stage/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stage/home.page.dart';
import 'package:stage/todo.page.dart';

import 'login.page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "Auth": (context) => const Auth(),
      },
    );
  }
}
