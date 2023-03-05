import 'package:flutter/material.dart';
import 'package:todo_app/screens/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TodoList',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const PageAccueil());
  }
}
