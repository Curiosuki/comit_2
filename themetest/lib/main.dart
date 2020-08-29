import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:themetest/theme_config/ui_text_theme.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(),
  ),
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale,
      // <--- Add the locale
      builder: DevicePreview.appBuilder,
      // <--- Add the builder
      title: 'Scale UI to fit multiple display sizes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextScalePage(),
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
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: SizeConfig.safeBlockVertical * 25,
          width: SizeConfig.safeBlockHorizontal * 55,
          color: Colors.black,
        ),
      ),
    );
  }
}

class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Scaling text!',
              style: UITextTheme.display4,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.display3,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.display2,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.display1,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.headline,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.subhead,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.title,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.subtitle,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.body2,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.textSection,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.caption,
            ),
            Text(
              'Scaling text!',
              style: UITextTheme.buttonText,
            ),

          ],
        ),
      ),
    );
  }
}