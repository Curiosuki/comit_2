import 'package:flutter/material.dart';
import 'package:flutter_app_login/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString(){
    return 'Orientation: $orientation, 디바이스: $deviceScreenType, 스크린사이즈: $screenSize, 로컬위젯사이즈: $localWidgetSize';
  }
}
