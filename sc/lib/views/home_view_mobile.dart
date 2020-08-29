/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';
import 'package:sc/widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(Icons.menu, size: 25),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              child: Image.network(
                  'http://www.evolo.us/wp-content/uploads/2018/04/0764-0-768x442.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          AppDrawer(),
          Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 9 / 16,
                child: Container(
                  child: Image.network(
                      'http://www.evolo.us/wp-content/uploads/2018/04/0764-0-768x442.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
