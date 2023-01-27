import 'package:flutter/material.dart';
import 'package:ui_2/screens/ui_2.dart';
import 'package:ui_2/screens/ui_2_ListView.dart';
import 'package:ui_2/screens/ui_2_ListView_Model.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen2_3(),
    );
  }
}
