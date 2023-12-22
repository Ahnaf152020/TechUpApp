import 'package:flutter/material.dart';
import 'package:flutter_assignment20220104040/firstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double Height=MediaQuery.of(context).size.height;

    return MaterialApp(
      title: 'Flutter Assignment 20220104040',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white70,
      ),
      home:  SafeArea(child: Firstpage()),
    );
  }
}