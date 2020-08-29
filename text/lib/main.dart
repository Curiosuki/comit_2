import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:text/uiutils.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale,
      // <--- Add the locale
      builder: DevicePreview.appBuilder,
      // <---
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.redAccent,
                width: UIUtills().getProportionalWidth(width: 200),
                height: UIUtills().getProportionalHeight(height: 200),
              child: Text('안녕하세요. 김준석입니다.', style: UIUtills().getTextStyleRegular(fontsize: 34),),
            ),
            Container(
              width: UIUtills().getProportionalWidth(width: 200),
              height: UIUtills().getProportionalHeight(height: 300),
              color: Colors.blueAccent,
              margin: EdgeInsets.only(
                  left: UIUtills().getProportionalWidth(width: 32.0)),
              child: Text(
                'Home',
                //textAlign: TextAlign.center,
                style: UIUtills().getTextStyleRegular(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
