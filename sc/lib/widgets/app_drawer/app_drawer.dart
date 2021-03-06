import 'package:flutter/material.dart';
import 'package:sc/responsive/orientation_layout.dart';
import 'package:sc/responsive/screen_type_layout.dart';
import 'package:sc/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:sc/widgets/app_drawer/app_view_tablet.dart';
import 'package:sc/widgets/drawer_option/drawer_option.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOption(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}