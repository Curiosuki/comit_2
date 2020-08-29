import 'package:codingpapa_login/join_or_login.dart';
import 'package:codingpapa_login/screens/login.dart';
import 'package:flutter/material.dart';  // Material library를 가져옴
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<JoinOrLogin>.value(
          value: JoinOrLogin(),
          child: Authpage()),
    );
  }
}
