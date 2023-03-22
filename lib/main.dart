import 'package:flutter/material.dart';
import 'package:stage/home.page.dart';
import 'package:stage/login.page.dart';
import 'archive.page.dart';
import 'register.page.dart';
import 'todo.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
