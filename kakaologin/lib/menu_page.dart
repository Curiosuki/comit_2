import 'package:flutter/material.dart';
import 'package:kakaologin/dashboard.dart';
import 'package:kakaologin/chat.dart';
import 'package:kakaologin/profile.dart';
import 'package:kakaologin/settings.dart';


class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {


  // 하단메뉴 설정
  int currentTab = 0;
  final List<Widget> screens = [
    DashBoard(),
    Chat(),
    Profile(),
    Settings(),
  ];

  Widget currentScreen = DashBoard();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          '분양앱',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),

      // ---하단메뉴
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),


      // --- 하단메뉴: BottomNav
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.map),
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // --- 하단 추가메뉴

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(
                            () {
                          currentScreen = DashBoard();
                          currentTab = 0;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          '홈',
                          style: TextStyle(
                            color:
                            currentTab == 0 ? Colors.blueAccent : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(
                            () {
                          currentScreen = Chat();
                          currentTab = 1;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          '채팅',
                          style: TextStyle(
                            color:
                            currentTab == 1 ? Colors.blueAccent : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(
                            () {
                          currentScreen = Profile();
                          currentTab = 2;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 2 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          '내정보',
                          style: TextStyle(
                            color:
                            currentTab == 2 ? Colors.blueAccent : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(
                            () {
                          currentScreen = Settings();
                          currentTab = 3;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: currentTab == 3 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          '설정',
                          style: TextStyle(
                            color:
                            currentTab == 3 ? Colors.blueAccent : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),




      // ------- 바디 부분

    );
  }


}
