import 'package:flutter/material.dart';
import 'package:navigationbutton/string.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // titleSection Widget
  Widget titleSection = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.appHeadingTitle,
            style: TextStyle(
              color: Color(0xff622f74),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.appsubHeadingTitle,
            style: TextStyle(
              color: Color(0xff622f74),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appBarTitle,
      theme: ThemeData(
        primaryColor: Color(0xff622f74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appBarTitle),
        ),
        body: ListView(
          children: <Widget>[
            titleSection,
          ],
        ),
      ),
    );
  }
}
