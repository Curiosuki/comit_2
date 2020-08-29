import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_architecture/screens/product/product_detail_one.dart';
import 'package:responsive_architecture/screens/product/product_detail_three.dart';
import 'package:responsive_architecture/screens/product/product_detail_two.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapProduct extends StatefulWidget {
  @override
  _MapProductState createState() => _MapProductState();
}

class _MapProductState extends State<MapProduct> {
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return _pc.open();
        },
      ),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height/1.8,
        controller: _pc,
        // 실제 바디 부분
        body: Text('asdfasdfasdfafwertwet'),

        collapsed: Container(color: Colors.blueAccent, child: Text('dddddddd')),

        // 슬라이딩 패널 바디 부분
        borderRadius: AppTheme.topRadius,
        color: Colors.redAccent,
        panel: Center(
          child: Text('asdlfkjasldkflaksd'),
        ),

        // 위에 안내하는 부분
      ),
    );
  }

}
