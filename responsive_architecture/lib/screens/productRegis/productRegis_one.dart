import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class ProductRegisOne extends StatefulWidget {
  @override
  _ProductRegisOneState createState() => _ProductRegisOneState();
}

class _ProductRegisOneState extends State<ProductRegisOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.recent_actors),
                ),
                Text('분양물건 등록하기',
                textAlign: TextAlign.center,
                style: AppTheme.subtitle,),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                      borderSide: BorderSide(
                          color: AppTheme.maincolor_200,
                      ),
                  ),
                  labelText: '건물명',
                  hintText: '해당 필드를 입력해주세요',
                  labelStyle: AppTheme.textSection,
                  //hasFloatingPlaceholder: false,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return '입력을 해주세요';
                  }

                  return '';
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}
