import 'package:flutter/material.dart';
import 'package:responsive_architecture/screens/home/home_middle_slider.dart';
import 'package:responsive_architecture/screens/home/home_top_menu.dart';
import 'package:responsive_architecture/screens/home/home_top_slider.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            HomeTopMenu(),
            AppTheme.largeDivider,
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: AppTheme.horizonSize,
                vertical: AppTheme.verticalSize,
              ),
              child: Text(
                '프리미엄',
                style: AppTheme.subtitle,
              ),
            ),
            HomeTopSlider(),
            AppTheme.largeDivider,
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: AppTheme.horizonSize,
                vertical: AppTheme.verticalSize,
              ),
              child: Text(
                '전문가 추천',
                //textAlign: TextAlign.center,
                style: AppTheme.subtitle,
              ),
            ),
            HomeMiddleSlider(),
            AppTheme.largeDivider,
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: AppTheme.horizonSize,
                vertical: AppTheme.verticalSize,
              ),
              child: Text(
                '스페셜',
                //textAlign: TextAlign.center,
                style: AppTheme.subtitle,
              ),
            ),
          ]),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          childAspectRatio: 2 * AppTheme.horizonSize / 3 * AppTheme.verticalSize,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: AppTheme.allRadius,
                          child: Image.asset(
                            'assets/img/0.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              color: AppTheme.maincolor_50,
                              iconSize: 30,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            AppTheme.banner
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      '[동탄] 르보아시티',
                      style: AppTheme.body2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '최고분양가 | ',
                            style: AppTheme.body2,
                          ),
                          Text(
                            '최저분양가 | ',
                            style: AppTheme.body2,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '2억 3000만원',
                            style: AppTheme.body2,
                          ),
                          Text(
                            '12억 3000만원',
                            style: AppTheme.body2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}
