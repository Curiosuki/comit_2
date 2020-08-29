import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thememaker/main_widget/widget_1/widget_text.dart';
import 'package:thememaker/ui_setting/ui_color_theme.dart';
import 'package:thememaker/ui_setting/ui_text_theme.dart';


class Widget1 extends StatefulWidget {
  @override
  _Widget1State createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  final flutterlogo_trasparent = CircleAvatar(
    backgroundImage: AssetImage('assets/images/flutterlogo.png'),
  );
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(
          backgroundColor: UIColorTheme.mainColor_50,
          title: Text('(1) 텍스트', style: UITextTheme.body,),
          children: <Widget>[
            ListTile(
              title: Text('- Text', style: UITextTheme.body,),
              onTap: () {Navigator.push( // OnPressed 함수에 넣기
                  context,
                  MaterialPageRoute(builder: (context) => WidgetText()),
                );},
            ),
            ListTile(
              title: Text('- RichText', style: UITextTheme.body,),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: UIColorTheme.mainColor_50,
          title: Text('(2) 버튼', style: UITextTheme.body,),
          children: <Widget>[
            ListTile(
              title: Text('- RaisedButton', style: UITextTheme.body,),
              onTap: () {},
            ),
            ListTile(
              title: Text('- FlatButton', style: UITextTheme.body,),
              onTap: () {},
            ),
            ListTile(
              title: Text('- OutlineButton', style: UITextTheme.body,),
              onTap: () {},
            ),
            ListTile(
              title: Text('- MaterialButton', style: UITextTheme.body,),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: UIColorTheme.mainColor_50,
          title: Text('(3) 아이콘', style: UITextTheme.body,),
          children: <Widget>[
            ListTile(
              title: Text('- Icon', style: UITextTheme.body,),
              onTap: () {},
            ),
            ListTile(
              title: Text('- IconButton', style: UITextTheme.body,),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: UIColorTheme.mainColor_50,
          title: Text('(4) 이미지', style: UITextTheme.body,),
          children: <Widget>[
            ListTile(
              title: Text('- Asset', style: UITextTheme.body,),
              onTap: () {},
            ),
            ListTile(
              title: Text('- Network', style: UITextTheme.body,),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: UIColorTheme.mainColor_50,
          title: Text('(5) 제스처', style: UITextTheme.body,),
          children: <Widget>[
            ListTile(
              title: Text('- Inkwell', style: UITextTheme.body,),
              onTap: () {},
            ),
            ListTile(
              title: Text('- GuestureDetector', style: UITextTheme.body,),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

}
