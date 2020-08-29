import 'package:flutter/material.dart';
import 'package:bungzombi/account_page.dart';
import 'package:bungzombi/home_page.dart';
import 'package:bungzombi/search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TabPage extends StatefulWidget {

  final FirebaseUser user;
  TabPage(this.user);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List _pages = [
    HomePage(),
    SearchPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.redAccent,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('홈')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('검색')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('계정')),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {    // tab을 눌렸을때 변경하게 하는 메서드
    setState(() {
      _selectedIndex = index;
    });
  }
}
