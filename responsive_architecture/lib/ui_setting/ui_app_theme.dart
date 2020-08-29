import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTheme {
  AppTheme._();


  // 1. 사이즈 설정 -------------------------------------------------------------//

  // (1) 패딩/마진/라운드 사이즈 정의 -------------------------------------------------
  static final allSize = 4.0;
  static final topSize = 4.0;
  static final bottomSize = 4.0;
  static final leftSize = 4.0;
  static final rightSize = 4.0;
  static final horizonSize = 4.0;
  static final verticalSize = 4.0;

  // (2) 폰트사이즈 정의 -----------------------------------------------------------
  static final display4_size = ScreenUtil().setSp(46);
  static final display3_size = ScreenUtil.getInstance().setSp(44);
  static final display2_size = ScreenUtil.getInstance().setSp(42);
  static final display1_size = ScreenUtil.getInstance().setSp(40);
  static final headline_size = ScreenUtil.getInstance().setSp(38);
  static final subhead_size = ScreenUtil.getInstance().setSp(36);
  static final title_size = ScreenUtil.getInstance().setSp(34); // 기준점
  static final subtitle_size = ScreenUtil.getInstance().setSp(32);
  static final body2_size = ScreenUtil.getInstance().setSp(30);
  static final texSection_size = ScreenUtil.getInstance().setSp(28);
  static final caption_size = ScreenUtil.getInstance().setSp(26);
  static final buttonText_size = 14.0;

  // 2. 색상 설정 --------------------------------------------------------------//

  // (1) 메인색상 설정
  static final Color maincolor_50 = Color(0xFFFAFAFA);
  static final Color maincolor_100 = Color(0xFFF5F5F5);
  static final Color maincolor_200 = Color(0xFFEEEEEE);
  static final Color maincolor_300 = Color(0xFFE0E0E0);
  static final Color maincolor_400 = Color(0xFFBDBDBD);
  static final Color maincolor_500 = Color(0xFF9E9E9E);
  static final Color maincolor_600 = Color(0xFF757575);
  static final Color maincolor_700 = Color(0xFF616161);
  static final Color maincolor_800 = Color(0xFF424242);
  static final Color maincolor_900 = Color(0xFF212121);

  // (2) 배너색상 설정
  static final Color bannerRed = Color(0xFFC62828);
  static final Color bannerBlue = Color(0xFF1565C0);
  static final Color bannerGreen = Color(0xFF00695C);
  static final Color bannerYellow = Color(0xFFFf8F00);

  // 2. 테마데이터 설정 ----------------------------------------------------------//
  static final ThemeData lightTheme = ThemeData(

    // (1) 기본 -----------------------------------------------------------------
    primaryColor: AppTheme.maincolor_50,
    accentColor: AppTheme.maincolor_400,
    indicatorColor: AppTheme.maincolor_400,
    scaffoldBackgroundColor: AppTheme.maincolor_50,
    brightness: Brightness.light,
    //backgroundColor: AppTheme.maincolor_400,

    // (2) 앱바 -----------------------------------------------------------------
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          // actionsIconTheme: ,
          elevation: 0.0,
          textTheme: TextTheme(title: AppTheme.title),
        ),

    // (3) 탭바 -----------------------------------------------------------------
    tabBarTheme: ThemeData.light().tabBarTheme.copyWith(
          labelColor: AppTheme.maincolor_800,
          unselectedLabelColor: AppTheme.maincolor_400,
        ),

    // (4) 아이콘 ----------------------------------------------------------------
    iconTheme: IconThemeData(
      color: AppTheme.maincolor_800,
      size: 20.0,
    ),
    textTheme: TextTheme(
      display4: display4,
      display3: display3,
      display2: display2,
      display1: display1,
      headline: headline,
      subhead: subhead,
      title: title,
      subtitle: subtitle,
      body2: body2,
      body1: textSection,
      caption: caption,
      button: buttonText,
    ),
  );

  // 2. 텍스트 설정 -------------------------------------------------------------//

  // (1) 폰트 정의 ---------------------------------------------------------------
  static final String fontName = 'KakaoRegular';


  // (2-1) 디스플레이4 스타일 -------------------------------------------------------
  static final TextStyle display4 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display4_size,
    color: AppTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (2-2) 디스플레이4 화이트
  static final TextStyle display4_white =
      display3.copyWith(color: AppTheme.maincolor_50);

  // (3-1) 디스플레이3 스타일 -------------------------------------------------------
  static final TextStyle display3 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display3_size,
    color: AppTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (3-2) 디스플레이3 화이트
  static final TextStyle display3_white =
      display3.copyWith(color: AppTheme.maincolor_50);

  // (2-1) 디스플레이2 스타일 -------------------------------------------------------
  static final TextStyle display2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display2_size,
    color: AppTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (2-2) 디스플레이2 화이트
  static final TextStyle display2_white =
      display2.copyWith(color: AppTheme.maincolor_50);

  // (3-1) 디스플레이1 스타일 ------------------------------------------------------
  static final TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: display1_size,
    color: AppTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (3-2) 디스플레이1 화이트
  static final TextStyle display1_white =
      display1.copyWith(color: AppTheme.maincolor_50);

  // (4-1) 헤드라인 스타일 ---------------------------------------------------------
  static final TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: headline_size,
    color: AppTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (4-2) 헤드라인 화이트
  static final TextStyle headline_white =
      headline.copyWith(color: AppTheme.maincolor_50);

  // (5-1) 서브헤드 스타일 ---------------------------------------------------------
  static final TextStyle subhead = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: subhead_size,
    color: AppTheme.maincolor_800,
    //letterSpacing: 0.4,
    //height: 0.9,
  );

  // (5-2) 서브헤드 화이트
  static final TextStyle subhead_white =
      subhead_white.copyWith(color: AppTheme.maincolor_50);

  // (6-1) 타이틀 스타일 ----------------------------------------------------------
  static final TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w800,
    fontSize: title_size,
    color: AppTheme.maincolor_800,
    // letterSpacing: 0.18,
  );

  // 타이틀 화이트
  static final TextStyle title_white =
      title.copyWith(color: AppTheme.maincolor_50);

  // (7-1) 서브타이틀 스타일 -------------------------------------------------------
  static final TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w800,
    fontSize: subtitle_size,
    color: AppTheme.maincolor_800,
    // letterSpacing: 0.18,
  );

  // (7-2) 서브타이틀 화이트
  static final TextStyle subtitle_white =
      subtitle.copyWith(color: AppTheme.maincolor_50);

  // (8-1) 바디2 스타일 ----------------------------------------------------------
  static final TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: body2_size,
    color: AppTheme.maincolor_800,
    // letterSpacing: 0.2,
  );

  // (8-2) 바디2 화이트
  static final TextStyle body2_white =
      body2.copyWith(color: AppTheme.maincolor_50);

  // (9-1) 텍스트섹션 스타일 --------------------------------------------------------
  static final TextStyle textSection = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: texSection_size,
    color: AppTheme.maincolor_800,
    height: 1.5, // 줄간격
    // letterSpacing: -0.05,
  );

  // (9-2) 바디1 화이트
  static final TextStyle textSection_white =
      textSection.copyWith(color: AppTheme.maincolor_50);

  // (10-1) 캡션 스타일 -----------------------------------------------------------
  static final TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: caption_size,
    color: AppTheme.maincolor_800,
    // letterSpacing: 0.2,
  );

  // (10-2) 캡션 화이트
  static final TextStyle caption_white =
      caption.copyWith(color: AppTheme.maincolor_50);

  // (11-1) 버튼 텍스트 스타일 ------------------------------------------------------
  static final TextStyle buttonText = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: buttonText_size,
    color: AppTheme.maincolor_800,
    // letterSpacing: 0.2,
  );

  // (11-2) 버튼 화이트
  static final TextStyle buttonText_white =
      buttonText.copyWith(color: AppTheme.maincolor_50);



  // 3. 컴퍼넌트 ---------------------------------------------------------------//

  // RoundTopRadius 사이즈 스타일 -------------------------------------------------
  static final BorderRadiusGeometry topRadius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );

  // TopRound 박스데코레이션 스타일 -------------------------------------------------
  static final BoxDecoration topRoundBoxDeco = BoxDecoration(
    color: AppTheme.maincolor_50,
    borderRadius: AppTheme.topRadius,
  );

  // All Radius 스타일 ----------------------------------------------------------
  static final BorderRadiusGeometry allRadius =
      BorderRadius.all(Radius.circular(24.0));

  // Top Round 박스데코레이션 스타일 ------------------------------------------------
  static final BoxDecoration AllRoundBoxDeco = BoxDecoration(
    color: AppTheme.maincolor_50,
    borderRadius: AppTheme.topRadius,
  );

  // Large Divider 스타일 -------------------------------------------------------
  static final Divider largeDivider = Divider(
    color: AppTheme.maincolor_200,
    thickness: 15,
    height: ScreenUtil.getInstance().setHeight(80),
  );

  // Large Divider 스타일 -------------------------------------------------------

  static final banner = Container(
    padding: EdgeInsets.only(
      top: 2.0,
      bottom: 2.0,
      left: 4.0,
      right: 4.0,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      color: AppTheme.bannerGreen,
    ),
    child: Text(
      '오피스텔',
      style: AppTheme.caption_white,
    ),
  );



}



