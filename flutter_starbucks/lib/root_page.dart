import 'package:flutter/material.dart';
import 'package:flutter_starbucks/menu_page.dart';
import 'package:flutter_starbucks/store_page.dart';


class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: <Widget>[
          FlatButton(
            child: Text('전체메뉴'), onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
          },
          ),

          FlatButton(
            child: Text('전체메뉴'), onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StorePage()),
                );
          },
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),),
    );
  }
}
