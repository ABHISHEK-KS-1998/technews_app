import 'package:flutter/material.dart';
import 'package:technews_app/pages/home.dart';
import 'package:technews_app/uitls/colors.dart';
//import 'dart:typed_data';

void main () => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key}); //check with original code.

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primary,
      ),
      home:Home(),
    );
  }
}



