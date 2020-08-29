import 'package:codingpapa_login/join_or_login.dart';
import 'package:flutter/material.dart';

class LoginBackground extends CustomPainter{

  LoginBackground({@required this.isJoin});
  final bool isJoin;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = isJoin?Colors.redAccent:Colors.blueAccent; // .. 은 Paint()를 생성해서 color값을 Colors.blue로 지정하고 paint 오브젝트로 지정하라
    canvas.drawCircle(Offset(size.width*0.5,size.height*0.2), size.height*0.5, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}