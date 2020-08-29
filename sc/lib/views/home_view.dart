import 'package:flutter/material.dart';
import 'package:sc/responsive/orientation_layout.dart';
import 'package:sc/responsive/screen_type_layout.dart';
import 'package:sc/views/home_view_mobile.dart';
import 'package:sc/views/home_view_tablet.dart';



class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}