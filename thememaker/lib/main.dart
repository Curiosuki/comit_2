import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:thememaker/home_main.dart';
import 'package:thememaker/ui_setting/ui_app_theme.dart';

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
      // <--- Add the builder      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: HomeMain(),
    );
  }
}
