import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui_setting/ui_app_string.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';
import 'package:responsive_architecture/utils/util_textsection.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ProductDetailTwo extends StatefulWidget {
  @override
  _ProductDetailTwoState createState() => _ProductDetailTwoState();
}

class _ProductDetailTwoState extends State<ProductDetailTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        AppTheme.largeDivider,
        TextSection(AppString.title, AppString.imgurl, AppString.dummyText),
        TextSection(AppString.title, AppString.imgurl, AppString.dummyText),
        TextSection(AppString.title, AppString.imgurl, AppString.dummyText),
      ],
    );
  }
}
