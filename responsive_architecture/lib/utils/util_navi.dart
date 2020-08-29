import 'package:flutter/material.dart';
import 'package:responsive_architecture/chatroom.dart';
import 'package:responsive_architecture/screens/home.dart';
import 'package:responsive_architecture/screens/map_product.dart';
import 'package:responsive_architecture/screens/productRegis/productRegis_one.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';
import 'package:responsive_architecture/ui_setting/ui_app_string.dart';
import 'package:responsive_architecture/utils/util_textsection.dart';

class AppBarBottomNavi extends StatefulWidget {
  @override
  _AppBarBottomNaviState createState() => _AppBarBottomNaviState();
}

class _AppBarBottomNaviState extends State<AppBarBottomNavi> {
  var _selectedPage = 0;
  var _pageOptions = [
    Home(),
    ChatRoom(),
    MapProduct(),
    ProductRegisOne(),
    TextSection(AppString.title, AppString.imgurl, AppString.dummyText),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: AppTheme.maincolor_800,
          onPressed: () {},
        ),
        title: Text(
          AppString.brand_name,
          style: AppTheme.title,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: AppTheme.maincolor_800,
            onPressed: () {},
          ),
          IconButton(
            color: AppTheme.maincolor_800,
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        elevation: 1.0,
        backgroundColor: AppTheme.maincolor_800,
        unselectedItemColor: AppTheme.maincolor_400,
        selectedItemColor: AppTheme.maincolor_800,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '홈',
              style: AppTheme.caption,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text(
              '채팅',
              style: AppTheme.caption,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text(
              '지도',
              style: AppTheme.caption,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              '내정보',
              style: AppTheme.caption,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(
              '세팅',
              style: AppTheme.caption,
            ),
          ),
        ],
      ),
      body: _pageOptions[_selectedPage],
    );
  }
}
