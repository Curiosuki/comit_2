import 'package:flutter/material.dart';
import 'package:thememaker/ui_setting/ui_color_theme.dart';
import 'package:thememaker/ui_setting/ui_text_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    /*------------------------------------------------------------------------*/
      primaryColor: Colors.white,
      accentColor: UIColorTheme.mainColor_900,
      indicatorColor: UIColorTheme.mainColor_900,
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      /*------------------------------------------------------------------------*/
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
        elevation: 0.0,
        textTheme: TextTheme(title: UITextTheme.headline),
        iconTheme: ThemeData.light().iconTheme.copyWith(
          size: 24,
          //opacity: 0.0,
          //color: UIColorTheme.gradientcolor_400,
        ),
      ),

  );

}
