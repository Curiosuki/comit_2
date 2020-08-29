import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';
import 'package:responsive_architecture/ui_setting/ui_app_string.dart';

/* TextSection ---------------------------------------------*/

class TextSection extends StatelessWidget {
  // 필드: 타이틀, 바디
  final String _title;
  final String _imgurl;
  final String _body;
  static const double _hpad = 8.0;

  // 생성자
  TextSection(this._title, this._imgurl, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.fromLTRB(_hpad * 2, _hpad / 8, _hpad * 2, _hpad / 4),
          child: Text(
            AppString.subHeadingTitle,
            style: AppTheme.body2,
          ),
        ),
        Container(
            padding:
                EdgeInsets.fromLTRB(_hpad * 2, _hpad, _hpad * 2, _hpad / 4),
            child: Image.network(AppString.imgurl)),
        Container(
          padding: EdgeInsets.fromLTRB(_hpad * 2, _hpad / 4, _hpad * 2, _hpad),
          child: Text(
            AppString.dummyText,
            style: AppTheme.textSection,
          ),
        ),
        AppTheme.largeDivider,
      ],
    );
  }
}
