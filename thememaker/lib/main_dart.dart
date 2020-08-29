import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thememaker/ui_setting/ui_color_theme.dart';
import 'package:thememaker/ui_setting/ui_text_theme.dart';

import 'main_widget/widget_1/widget_text.dart';


class MainDart extends StatefulWidget {
  @override
  _MainDartState createState() => _MainDartState();
}

class _MainDartState extends State<MainDart> {

  var leadingIcon = Icon(FontAwesomeIcons.youtube, color: Colors.blue,);
  var trailingIcon = Icon(FontAwesomeIcons.arrowAltCircleRight);
  var bgColor = UIColorTheme.mainColor_50;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          color: Colors.transparent,
          thickness: 15,
          height: 15,
        ),
        Container(
          color: UIColorTheme.gradientcolor_900,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 1. 기본지식', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('01. Dart: 시작'),
          children: <Widget>[
            ListTile(
              title: Text('Dart 소개'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Dart 개발환경'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('02. Dart: 기초문법 '),
          children: <Widget>[
            ListTile(
              title: Text('기본문법 | Syntax'),
              onTap: () {},
            ),
            ListTile(
              title: Text('데이터타입 | Data Type'),
              onTap: () {},
            ),
            ListTile(
              title: Text('변수 | Variables'),
              onTap: () {},
            ),
            ListTile(
              title: Text('연산자 | Operators'),
              onTap: () {},
            ),
            ListTile(
              title: Text('함수 | Function'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('03. Dart: 제어문 '),
          children: <Widget>[
            ListTile(
              title: Text('반복문 | Loops'),
              onTap: () {},
            ),
            ListTile(
              title: Text('조건문 | Decision Making'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('04. Dart: 원시타입과 참조타입 '),
          children: <Widget>[
            ListTile(
              title: Text('숫자타입 | Numbers'),
              onTap: () {},
            ),
            ListTile(
              title: Text('문자열 타입 | String'),
              onTap: () {},
            ),
            ListTile(
              title: Text('논리 타입 | Boolean'),
              onTap: () {},
            ),
            ListTile(
              title: Text('배열 | Lists'),
              onTap: () {},
            ),
            ListTile(
              title: Text('맵 |  Map'),
              onTap: () {},
            ),
            ListTile(
              title: Text('열거 | Enumeration'),
              onTap: () {},
            ),
          ],
        ),
        Container(
          color: UIColorTheme.gradientcolor_900,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 2. 객체지향프로그래밍', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('01. Dart: 클래스'),
          children: <Widget>[
            ListTile(
              title: Text('클래스 | Class'),
              onTap: () {},
            ),
            ListTile(
              title: Text('객체 | Object'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('02. Dart: 상속과 추상'),
          children: <Widget>[
            ListTile(
              title: Text('상속 | extends'),
              onTap: () {},
            ),
            ListTile(
              title: Text('추상 | abstract'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('03. Dart: 인터페이스'),
          children: <Widget>[
            ListTile(
              title: Text('(1) 상속 | extends'),
              onTap: () {},
            ),
            ListTile(
              title: Text('(2) 추상 | abstract'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('04. Dart: 제네릭'),
          children: <Widget>[
            ListTile(
              title: Text('(1) 상속 | extends'),
              onTap: () {},
            ),
            ListTile(
              title: Text('(2) 추상 | abstract'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('05. Dart: 컬렉션'),
          children: <Widget>[
            ListTile(
              title: Text('(1) 상속 | extends'),
              onTap: () {},
            ),
            ListTile(
              title: Text('(2) 추상 | abstract'),
              onTap: () {},
            ),
          ],
        ),
        Container(
          color: UIColorTheme.gradientcolor_900,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 3. 비동기프로그래밍', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        Container(
          color: UIColorTheme.gradientcolor_900,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 4. 함수형프로그래밍', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
      ],
    );
  }
}
