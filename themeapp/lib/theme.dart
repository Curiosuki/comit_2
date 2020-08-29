import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      // 헤드라인
      headline: base.headline.copyWith(
        // fontFamily: ,
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
        color: Colors.white,
      ),

      // 타이틀
      title: base.headline.copyWith(
        // fontFamily: ,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white,
      ),

      // 디스플레이1
      display1: base.headline.copyWith(
        // fontFamily: ,
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.black87,
      ),

      // 디스플레이2
      display2: base.headline.copyWith(
        // fontFamily: ,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black87,
      ),

      // 캡션
      caption: base.headline.copyWith(
        // fontFamily: ,
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.black87,
      ),

      // 바디1
      body1: base.body1.copyWith(
        // fontFamily: ,
        // fontWeight: FontWeight.bold,
        // fontSize: 24,
        color: Color(0xFF807A6B),
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      primaryColor: Color(0xFF263238),
      accentColor: Colors.black87,
      iconTheme: IconThemeData(
        color: Colors.black87,
        size: 20.0,
      ),
      indicatorColor: Colors.black87,
      scaffoldBackgroundColor: Colors.black87,
      buttonColor: Colors.black87,
      backgroundColor: Colors.black87,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Colors.black87,
        unselectedLabelColor: Colors.grey,
      ));
}
