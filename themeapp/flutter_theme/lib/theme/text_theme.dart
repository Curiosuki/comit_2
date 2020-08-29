import 'package:flutter/material.dart';
import 'package:flutter_theme/theme/constants.dart';


class SetTextTheme {
  // 1. 폰트 설정 ---------------------------------------------------------------//
  static final String fontName = 'KakaoRegular';
  static final Color fontColor = mainColor_900;

  // 2. 텍스트 설정 --------------------------------------------------------------//
  static final TextStyle display4 = TextStyle(
    fontFamily: fontName,
    fontSize: display4Size,
    color: fontColor,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle display3 = TextStyle(
    fontFamily: fontName,
    fontSize: display3Size,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle display2 = TextStyle(
    fontFamily: fontName,
    fontSize: display3Size,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontSize: display1Size,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontSize: headlineSize,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle subhead = TextStyle(
    fontFamily: fontName,
    fontSize: subheadSize,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle title = TextStyle(
    fontFamily: fontName,
    fontSize: titleSize,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontSize: subtitleSize,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final TextStyle bodySection = TextStyle(
    fontFamily: fontName,
    fontSize: bodySectionSize,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );

  static final TextStyle textSection = TextStyle(
    fontFamily: fontName,
    fontSize: texSectionSize,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );

  static final TextStyle caption = TextStyle(
    fontFamily: fontName,
    fontSize: captionSize,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );

  static final TextStyle buttonText = TextStyle(
    fontFamily: fontName,
    fontSize: buttonTextSize,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );

}