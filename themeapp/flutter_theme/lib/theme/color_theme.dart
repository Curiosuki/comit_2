import 'package:flutter/material.dart';


class SetMainColor {
  static final Color mainColor_50 = Color(0xFFFAFAFA);
  static final Color mainColor_100 = Color(0xFFF5F5F5);
  static final Color mainColor_200 = Color(0xFFEEEEEE);
  static final Color mainColor_300 = Color(0xFFE0E0E0);
  static final Color mainColor_400 = Color(0xFFBDBDBD);
  static final Color mainColor_500 = Color(0xFF9E9E9E);
  static final Color mainColor_600 = Color(0xFF757575);
  static final Color mainColor_700 = Color(0xFF616161);
  static final Color mainColor_800 = Color(0xFF424242);
  static final Color mainColor_900 = Color(0xFF212121);
}

class SetBannerColor {
  static final Color bannerRed = Color(0xFFC62828);
  static final Color bannerBlue = Color(0xFF1565C0);
  static final Color bannerGreen = Color(0xFF00695C);
  static final Color bannerYellow = Color(0xFFFf8F00);
}

class SetSubColor {
  static final Color gradientcolor_50 = Color(0xFFFFF8E1);
  static final Color gradientcolor_100 = Color(0xFFFFECB3);
  static final Color gradientcolor_200 = Color(0xFFFFE082);
  static final Color gradientcolor_300 = Color(0xFFFFD54F);
  static final Color gradientcolor_400 = Color(0xFFFFCA28);
  static final Color gradientcolor_500 = Color(0xFFFFC107);
  static final Color gradientcolor_600 = Color(0xFFFFB300);
  static final Color gradientcolor_700 = Color(0xFFFFA000);
  static final Color gradientcolor_800 = Color(0xFFFF8F00);
  static final Color gradientcolor_900 = Color(0xFFFF6F00);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
