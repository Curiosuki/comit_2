import 'package:flutter/material.dart';
import 'package:thememaker/main_widget.dart';
import 'package:thememaker/main_dart.dart';
import 'package:thememaker/ui_setting/ui_color_theme.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('FLUTTER'),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: UIColorTheme.mainColor_900,
            tabs: <Widget>[
              Tab(icon: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/flutterlogo.png'),  // url 넣기
              ),
                text: 'Widget',
              ),
              Tab(icon: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/dartlogo.jpg'),  // url 넣기
              ),
                text: 'Dart',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MainWidget(),
            MainDart(),
          ],
        ),
      ),
    );
  }
}
