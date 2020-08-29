import 'package:flutter/material.dart';
import 'package:bungzombi/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bungzombi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.redAccent,
        fontFamily: 'GamjaFlower',
      ),
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

