import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_thememaker/login_page.dart';
import 'login_page.dart';

//void main() => runApp(
//  DevicePreview(
//    builder: (context) => MyApp(),
//  ),
//);

void main() => runApp((MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      locale: DevicePreview.of(context).locale, // <--- Add the locale
//      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
