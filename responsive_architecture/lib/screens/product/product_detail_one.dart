import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class ProductDetailOne extends StatefulWidget {
  @override
  _ProductDetailOneState createState() => _ProductDetailOneState();
}

class _ProductDetailOneState extends State<ProductDetailOne> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.beenhere,
                size: 16,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '분양가',
                style: AppTheme.body2,
              ),
            ),
          ],
        ),
        Container(
          width: ScreenUtil.getInstance().setHeight(180),
          height: ScreenUtil.getInstance().setHeight(250),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        '평균분양가격',
                        style: AppTheme.textSection.copyWith(color: AppTheme.maincolor_400),
                      ),
                      Text(
                        '6.5억',
                        style: AppTheme.display4,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          elevation: 1.0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_drop_up,
                                          color: Colors.redAccent,
                                        ),
                                        Text(
                                          '최고분양가',
                                          style: AppTheme.caption
                                              .copyWith(color: AppTheme.maincolor_400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      '12억 3천만원',
                                      style: AppTheme.body2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 1.0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.blueAccent,
                                        ),
                                        Text(
                                          '최저분양가',
                                          style: AppTheme.caption
                                              .copyWith(color: AppTheme.maincolor_400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      '1억 3천만원',
                                      style: AppTheme.body2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        AppTheme.largeDivider,
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.beenhere,
                size: 16,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '주최',
                style: AppTheme.body2,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '시행사',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)오앤유',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '시공사',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '우성건영',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '신탁사',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '하나금융신탁',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '분양사',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)디앤씨',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, left: 8.0),
              child: Icon(
                Icons.beenhere,
                size: 16,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, left: 8.0),
              child: Text(
                '규모',
                style: AppTheme.body2,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '건축면적',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)오앤유',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '지상층',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '우성건영',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '지하층',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '하나금융신탁',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '총동수',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)디앤씨',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '총호수',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)디앤씨',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '주차댓수',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)디앤씨',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, left: 8.0),
              child: Icon(
                Icons.beenhere,
                size: 16,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, left: 8.0),
              child: Text(
                '일정',
                style: AppTheme.body2,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '착공일',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)오앤유',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '준공일',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '우성건영',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '입주일',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '하나금융신탁',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, left: 8.0),
              child: Icon(
                Icons.beenhere,
                size: 16,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, left: 8.0),
              child: Text(
                '계약',
                style: AppTheme.body2,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '계약금',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '(주)오앤유',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '중도금',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '우성건영',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '잔금',
                    textAlign: TextAlign.center,
                  ),
                  color: AppTheme.maincolor_200,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '하나금융신탁',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
