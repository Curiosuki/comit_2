import 'package:flutter/material.dart';
import 'package:flutter_app_login/ui_setting/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 150,
                  margin: EdgeInsets.all(50),
                  color: Colors.blue,
                  child: BaseWidget(
                    builder: (context, sizingInfo) =>
                        Text(sizingInfo.toString()),
                  ),
                ),
                Text(sizingInformation.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
