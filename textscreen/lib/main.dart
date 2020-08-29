import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:textscreen/screenutil.dart';
import 'package:textscreen/theme.dart';

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
      // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: Text(
                '무한도전',
                style: AppTheme.display4
              ),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                  '무한도전',
                  style: AppTheme.display3
              ),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                  '무한도전',
                  style: AppTheme.display2
              ),
            ),
          ),

          RaisedButton(
            child: Text('push'), onPressed: () {Navigator.push( // OnPressed 함수에 넣기
                context,
                MaterialPageRoute(builder: (context) => ScreenUtil()),
              );},
          )
        ],
      ),
    );
  }
}
