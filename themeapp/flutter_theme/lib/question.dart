import 'package:flutter/material.dart';
import 'package:flutter_theme/theme/text_theme.dart';


class Question extends StatelessWidget {

  String questionText;
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Text(questionText, style: SetTextTheme.title,);
  }
}
