import 'package:flutter/material.dart';
import 'package:setting/theme_config/ui_color_theme.dart';
import 'ui_size_config.dart';


class UITextTheme {


  static final String fontName = 'KakaoRegular';


  // 2. 폰트 사이즈 설정 -------------------------------------------------------------//

  static final display4_size = screenHeight(context)
  static final display3_size = SizeConfig.safeBlockHorizontal * 7.5;
  static final display2_size = SizeConfig.safeBlockHorizontal * 7.0;
  static final display1_size = SizeConfig.safeBlockHorizontal * 6.5;
  static final headline_size = SizeConfig.safeBlockHorizontal * 6.0;
  static final subhead_size = SizeConfig.safeBlockHorizontal * 5.5;
  static final title_size = SizeConfig.safeBlockHorizontal * 5; // 기준점
  static final subtitle_size = SizeConfig.safeBlockHorizontal * 4.5;
  static final body2_size = SizeConfig.safeBlockHorizontal * 4;
  static final texSection_size = SizeConfig.safeBlockHorizontal * 3.5;
  static final caption_size = SizeConfig.safeBlockHorizontal * 3;
  static final buttonText_size = 14.0;
  
  // 2. 텍스트 설정 -------------------------------------------------------------//

  // (1-1) 디스플레이4 스타일 -------------------------------------------------------
  static final TextStyle display4 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display4_size,
    color: UIColorTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (1-2) 디스플레이4 화이트
  static final TextStyle display4_white =
  display3.copyWith(color: UIColorTheme.maincolor_50);

  // (2-1) 디스플레이3 스타일 -------------------------------------------------------
  static final TextStyle display3 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display3_size,
    color: UIColorTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (2-2) 디스플레이3 화이트
  static final TextStyle display3_white =
  display3.copyWith(color: UIColorTheme.maincolor_50);

  // (3-1) 디스플레이2 스타일 -------------------------------------------------------
  static final TextStyle display2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display2_size,
    color: UIColorTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (3-2) 디스플레이2 화이트
  static final TextStyle display2_white =
  display2.copyWith(color: UIColorTheme.maincolor_50);

  // (4-1) 디스플레이1 스타일 ------------------------------------------------------
  static final TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display1_size,
    color: UIColorTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (4-2) 디스플레이1 화이트
  static final TextStyle display1_white =
  display1.copyWith(color: UIColorTheme.maincolor_50);

  // (5-1) 헤드라인 스타일 ---------------------------------------------------------
  static final TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: headline_size,
    color: UIColorTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (5-2) 헤드라인 화이트
  static final TextStyle headline_white =
  headline.copyWith(color: UIColorTheme.maincolor_50);

  // (6-1) 서브헤드 스타일 ---------------------------------------------------------
  static final TextStyle subhead = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: subhead_size,
    color: UIColorTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (6-2) 서브헤드 화이트
  static final TextStyle subhead_white =
  subhead_white.copyWith(color: UIColorTheme.maincolor_50);

  // (7-1) 타이틀 스타일 ----------------------------------------------------------
  static final TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w800,
    fontSize: title_size,
    color: UIColorTheme.maincolor_800,
    // letterSpacing: 0.18,
  );

  // (7-2) 타이틀 화이트
  static final TextStyle title_white =
  title.copyWith(color: UIColorTheme.maincolor_50);

  // (8-1) 서브타이틀 스타일 -------------------------------------------------------
  static final TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w800,
    fontSize: subtitle_size,
    color: UIColorTheme.maincolor_800,
    // letterSpacing: 0.18,
  );

  // (8-2) 서브타이틀 화이트
  static final TextStyle subtitle_white =
  subtitle.copyWith(color: UIColorTheme.maincolor_50);

  // (9-1) 바디2 스타일 ----------------------------------------------------------
  static final TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: body2_size,
    color: UIColorTheme.maincolor_800,
    // letterSpacing: 0.2,
  );

  // (9-2) 바디2 화이트
  static final TextStyle body2_white =
  body2.copyWith(color: UIColorTheme.maincolor_50);

  // (10-1) 텍스트섹션 스타일 --------------------------------------------------------
  static final TextStyle textSection = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: texSection_size,
    color: UIColorTheme.maincolor_800,
    height: 1.5, // 줄간격
    // letterSpacing: -0.05,
  );

  // (10-2) 바디1 화이트
  static final TextStyle textSection_white =
  textSection.copyWith(color: UIColorTheme.maincolor_50);

  // (11-1) 캡션 스타일 -----------------------------------------------------------
  static final TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    //fontWeight: FontWeight.w400,
    fontSize: caption_size,
    color: UIColorTheme.maincolor_800,
    // letterSpacing: 0.2,
  );

  // (11-2) 캡션 화이트
  static final TextStyle caption_white =
  caption.copyWith(color: UIColorTheme.maincolor_50);

  // (12-1) 버튼 텍스트 스타일 ------------------------------------------------------
  static final TextStyle buttonText = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: buttonText_size,
    color: UIColorTheme.maincolor_800,
    // letterSpacing: 0.2,
  );

  // (12-2) 버튼 화이트
  static final TextStyle buttonText_white =
  buttonText.copyWith(color: UIColorTheme.maincolor_50);

}
  
