import 'package:flutter/material.dart';
import 'package:test_ui/Pages/logInPage.dart';
import 'package:test_ui/Pages/mainpage.dart';
import 'package:test_ui/Pages/profilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: logInPage(),
    );
  }
}
