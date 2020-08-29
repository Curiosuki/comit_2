import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thememaker/ui_setting/ui_color_theme.dart';
import 'package:thememaker/ui_setting/ui_text_theme.dart';

import 'main_widget/widget_1/widget_text.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {

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
          color: UIColorTheme.gradientcolor_400,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 1. 입문', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('01. 위젯구조'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 기본구조'),
              children: <Widget>[
                ListTile(
                  title: Text('MaterialApp'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ThemeData'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Scaffold'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) 상하단'),
              children: <Widget>[
                ListTile(
                  title: Text('AppBar'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('TabBar'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('BottomNavigationBar'),
                  onTap: () {},
                ),
              ],
            ),

          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('02. 기본위젯'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 텍스트'),
              children: <Widget>[
                ListTile(
                  leading: leadingIcon,
                  trailing: trailingIcon,
                  title: Text('Text'),

                  onTap: () {
                    Navigator.push(
                      // OnPressed 함수에 넣기
                      context,
                      MaterialPageRoute(builder: (context) => WidgetText()),
                    );
                  },
                ),
                ListTile(
                  leading: leadingIcon,
                  trailing: trailingIcon,
                  title: Text('RichText'),
                ),
                ListTile(
                  leading: leadingIcon,
                  trailing: trailingIcon,
                  title: Text('Custom Font'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) 아이콘'),
              children: <Widget>[
                ListTile(
                  title: Text('Icon'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('IconButton'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(3) 이미지'),
              children: <Widget>[
                ListTile(
                  title: Text('Asset'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Network'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(4) 버튼'),
              children: <Widget>[
                ListTile(
                  title: Text('RasiedButton'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('FlatButton'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('OutlineButton'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('MaterialButton'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(5) 제스처'),
              children: <Widget>[
                ListTile(
                  title: Text('Inkwell'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('GestureDetector'),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('03. 레이아웃'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 박스'),
              children: <Widget>[
                ListTile(
                  title: Text('SizedBox'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ConstrainedBox'),
                ),
                ListTile(
                  title: Text('FittedBox'),
                ),
                ListTile(
                  title: Text('FractionallySizedBox'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) 데코레이션'),
              children: <Widget>[
                ListTile(
                  title: Text('Container'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('DecorationBox'),
                ),
                ListTile(
                  title: Text('Card'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ClipRRect'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('CircleAvatar'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(3) 레이아웃'),
              children: <Widget>[
                ListTile(
                  title: Text('Row'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Column'),
                ),
                ListTile(
                  title: Text('Expanded'),
                ),
                ListTile(
                  title: Text('Wrap'),
                ),
                ListTile(
                  title: Text('Stack'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(4) 조정'),
              children: <Widget>[
                ListTile(
                  title: Text('Center'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Align'),
                ),
                ListTile(
                  title: Text('Padding'),
                ),
                ListTile(
                  title: Text('AspectRatio'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(5) 구분'),
              children: <Widget>[
                ListTile(
                  title: Text('Spacer'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Divider'),
                ),
              ],
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,

          title: Text('04. 스크롤뷰'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 스크롤'),
              children: <Widget>[
                ListTile(
                  title: Text('Scrollaable'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Scrollbar'),
                ),
                ListTile(
                  title: Text('SingChildScrollView'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) 리스트뷰'),
              children: <Widget>[
                ListTile(
                  title: Text('ListView'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ListView.build'),
                ),
                ListTile(
                  title: Text('ListView.separated'),
                ),
                ListTile(
                  title: Text('ListView.custom'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(3) 그리드뷰'),
              children: <Widget>[
                ListTile(
                  title: Text('GridView.count'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ListView.builder'),
                ),
                ListTile(
                  title: Text('GridView.extent'),
                ),
                ListTile(
                  title: Text('GridView.custom'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(4) 슬리버'),
              children: <Widget>[
                ListTile(
                  title: Text('CustomScrollView'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('NestedScrollView'),
                ),
              ],
            ),
          ],
        ),
        Container(
          color: UIColorTheme.gradientcolor_400,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 2. 기본', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('01. 데이터처리'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) Stream'),
              children: <Widget>[
                ListTile(
                  title: Text('Stream'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('StreamBuilder'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) Future'),
              children: <Widget>[
                ListTile(
                  title: Text('Future - async'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Future - then'),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('02. 상태관리'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) Provider'),
              children: <Widget>[
                ListTile(
                  title: Text('Provider'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Consumer'),
                  onTap: () {},
                ),
              ],
            ),

          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('03. 파이어베이스'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) Firebase'),
              children: <Widget>[
                ListTile(
                  title: Text('Provider'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Consumer'),
                  onTap: () {},
                ),
              ],
            ),

          ],
        ),
        Container(
          color: UIColorTheme.gradientcolor_400,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 3. 중급', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('01. 폼 위젯'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 폼'),
              children: <Widget>[
                ListTile(
                  title: Text('Form'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('FormField'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) 텍스트'),
              children: <Widget>[
                ListTile(
                  title: Text('TextField'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('TextInput'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(3) 체크박스'),
              children: <Widget>[
                ListTile(
                  title: Text('CheckBox'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('CheckBoxListTile'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(4) 라디오'),
              children: <Widget>[
                ListTile(
                  title: Text('Radio'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('RaioListTile'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(5) 스위치'),
              children: <Widget>[
                ListTile(
                  title: Text('Switch'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('SwitchListTile'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(6) 기타'),
              children: <Widget>[
                ListTile(
                  title: Text('Slider'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Stepper'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Chip'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('DayPicker'),
                  onTap: () {},
                ),
              ],
            ),

          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,

          title: Text('02. 불릿위젯'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 다이얼로그'),
              children: <Widget>[
                ListTile(
                  title: Text('SimpleDialog'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('AlertDialog'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) 확장형'),
              children: <Widget>[
                ListTile(
                  title: Text('ExpansionPanel'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ExpansionTile'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(3) 기타'),
              children: <Widget>[
                ListTile(
                  title: Text('BottomSheet'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('SnackBar'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Tooltip'),
                  onTap: () {},
                ),
              ],
            ),


          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,
          title: Text('03. 반응형레이아웃'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) Orientation'),
              children: <Widget>[
                ListTile(
                  title: Text('SystemChrome'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(2) Screensize'),
              children: <Widget>[
                ListTile(
                  title: Text('ExpansionPanel'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ExpansionTile'),
                  onTap: () {},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('(3) 기타'),
              children: <Widget>[
                ListTile(
                  title: Text('BottomSheet'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('SnackBar'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Tooltip'),
                  onTap: () {},
                ),
              ],
            ),


          ],
        ),
        Container(
          color: UIColorTheme.gradientcolor_400,
          padding: const EdgeInsets.all(8.0),
          child: Text('Part 4. 고급', style: UITextTheme.subtitle_white,),
        ),
        Divider(
          color: UIColorTheme.mainColor_100,
          thickness: 15,
          height: 15,
        ),
        ExpansionTile(
          backgroundColor: bgColor,

          title: Text('01. 트랜스폼'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) Transform'),
              children: <Widget>[
                ListTile(
                  title: Text('Transform'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('F'),
                  onTap: () {},
                ),
              ],
            ),



          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,

          title: Text('02. 커스텀페인트'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 다이얼로그'),
              children: <Widget>[
                ListTile(
                  title: Text('SimpleDialog'),
                  onTap: () {},
                ),
              ],
            ),



          ],
        ),
        ExpansionTile(
          backgroundColor: bgColor,

          title: Text('03. 애니메이션'),
          children: <Widget>[
            ExpansionTile(
              title: Text('(1) 다이얼로그'),
              children: <Widget>[
                ListTile(
                  title: Text('SimpleDialog'),
                  onTap: () {},
                ),
              ],
            ),



          ],
        ),

      ],
    );
  }
}
