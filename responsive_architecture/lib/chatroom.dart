import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui_setting/ui_app_string.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.display3,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.display2,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.display1,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.headline,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.subhead,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.title,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.body2,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.textSection,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.caption,
          ),
        ),
        Container(
          child: Text(
            AppString.brand_name,
            style: AppTheme.buttonText,
          ),
        ),
      ],
    );
  }
}
