import 'package:flutter/material.dart';
import 'package:flutter_app_login/ui_setting/sizing%20information.dart';
import 'package:flutter_app_login/ui_utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context, boxConstraints){
      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight)
      );
      return builder(context, sizingInformation);
    });
  }
}
