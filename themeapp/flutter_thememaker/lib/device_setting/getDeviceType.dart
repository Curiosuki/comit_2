import 'package:flutter/material.dart';
import 'package:flutter_thememaker/device_setting/deviceType.dart';


DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  // 방향 설정
  if(orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  }else{
    deviceWidth = mediaQuery.size.width;
  }

  // 데스크탑
  if(deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  // 태블릿
  if(deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  // 모바일
  return DeviceScreenType.Mobile;
}