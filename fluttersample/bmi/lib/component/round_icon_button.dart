import 'package:flutter/material.dart';


class RoundedIconButton extends StatelessWidget {
  final IconData icon;

  RoundedIconButton({@required this.icon, @required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}