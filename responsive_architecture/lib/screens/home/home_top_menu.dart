import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';


class HomeTopMenu extends StatefulWidget {
  @override
  _HomeTopMenuState createState() => _HomeTopMenuState();
}

class _HomeTopMenuState extends State<HomeTopMenu> {

  final topMenuStrings = ['아파트', '상가', '오피스텔', '지식산업센터', '전원주택', '호텔', '기타'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _buildTopMenuItems() ,
      ),
    );
  }

  _buildTopMenuItems() {
    return topMenuStrings.map((text) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: RaisedButton(
            elevation: 1.0,
            child: Text(
              text,
              style: AppTheme.textSection,
            ),
            color: AppTheme.maincolor_50,
            shape: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.0,
                color: AppTheme.maincolor_200,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            onPressed: () {},
          ),
        ),
      );
    }).toList();
  }
}

