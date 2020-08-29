import 'package:flutter/material.dart';
import 'package:themetest/theme_config/ui_color_theme.dart';
import 'package:themetest/theme_config/ui_text_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    /*------------------------------------------------------------------------*/
      primaryColor: UIColorTheme.maincolor_50,
      accentColor: UIColorTheme.maincolor_400,
      indicatorColor: UIColorTheme.maincolor_400,
      scaffoldBackgroundColor: UIColorTheme.maincolor_50,
      brightness: Brightness.light,
    /*------------------------------------------------------------------------*/
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
        elevation: 1.0,
        textTheme: TextTheme(title: UITextTheme.headline),

    )
  );
}