import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_architecture/utils/util_navi.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale,
      // <--- Add the locale
      builder: DevicePreview.appBuilder,
      // <--- Add the builder
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return AppBarBottomNavi();
  }
}
