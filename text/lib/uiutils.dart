import 'package:flutter/material.dart';
class UIUtills {
  factory UIUtills() {
    return _singleton;
  }
  static final UIUtills _singleton = UIUtills._internal();
  UIUtills._internal() {
    print("Instance created UIUtills");
  }
//region Screen Size and Proportional according to device
  double _screenHeight;
  double _screenWidth;
  double get screenHeight => _screenHeight;
  double get screenWidth => _screenWidth;
  final double _refrenceScreenHeight = 1080;
  final double _refrenceScreenWidth = 1920;
  void updateScreenDimesion({double width, double height}) {
    _screenWidth = (width != null) ? width : _screenWidth;
    _screenHeight = (height != null) ? height : _screenHeight;
  }
  double getProportionalHeight({double height}) {
    if (_screenHeight == null) return height;
    return _screenHeight * height / _refrenceScreenHeight;
  }
  double getProportionalWidth({double width}) {
    if (_screenWidth == null) return width;
    var w = _screenWidth * width / _refrenceScreenWidth;
    return w.ceilToDouble();
  }
//endregion
//region TextStyle
  TextStyle getTextStyleRegular(
      {String fontName = 'Roboto-Regular',
        int fontsize = 24,
        Color color,
        bool isChangeAccordingToDeviceSize = true,
        double characterSpacing,
        double lineSpacing}) {
    double finalFontsize = fontsize.toDouble();
    if (isChangeAccordingToDeviceSize && this._screenHeight != null) {
      finalFontsize = (finalFontsize * _screenHeight) / _refrenceScreenHeight;
    }
    if (characterSpacing != null) {
      return TextStyle(
          fontSize: finalFontsize,
          fontFamily: fontName,
          color: color,
          letterSpacing: characterSpacing);
    } else if (lineSpacing != null) {
      return TextStyle(
          fontSize: finalFontsize,
          fontFamily: fontName,
          color: color,
          height: lineSpacing);
    }
    return TextStyle(
        fontSize: finalFontsize, fontFamily: fontName, color: color);
  }
}