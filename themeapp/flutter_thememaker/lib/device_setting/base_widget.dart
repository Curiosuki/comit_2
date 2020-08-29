import 'package:flutter/material.dart';
import 'package:flutter_thememaker/device_setting/getDeviceType.dart';
import 'package:flutter_thememaker/device_setting/setDeviceSize.dart';

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