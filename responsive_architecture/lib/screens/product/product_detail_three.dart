import 'package:flutter/material.dart';


class ProductDetailThree extends StatefulWidget {
  @override
  _ProductDetailThreeState createState() => _ProductDetailThreeState();
}

class _ProductDetailThreeState extends State<ProductDetailThree> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amber,
            child: ListView(
              children: <Widget>[
                Text('dd')
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.redAccent,
            child: ListView(
              children: <Widget>[
                Text('dd')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
