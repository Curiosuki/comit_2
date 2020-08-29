import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sc/ui_setting/ui_app_theme.dart';
import 'package:sc/views/home_view.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale,
      // <--- Add the locale
      builder: DevicePreview.appBuilder,
      // <--- Add the builder
      title: 'Flutter_ScreenUtil',
      theme: AppTheme.lightTheme,
      home: HomeView(),
    );
  }
}


