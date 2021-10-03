import 'package:flutter/material.dart';
import 'package:instagram/InstaHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(subtitle1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black))),
      home: InstaHome(),
    );
  }
}
