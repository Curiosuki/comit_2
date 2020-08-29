import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_architecture/screens/product/product_detail_one.dart';
import 'package:responsive_architecture/screens/product/product_detail_three.dart';
import 'package:responsive_architecture/screens/product/product_detail_two.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.maincolor_900,
        child: Icon(
          Icons.phone,
          color: AppTheme.maincolor_50,
        ),
        onPressed: () {},
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //forceElevated: true,
            //title: Text('분양앱'),
            backgroundColor: Colors.transparent,
            pinned: false,
            floating: false,
            //snap: true,
            elevation: 9.0,
            expandedHeight: MediaQuery.of(context).size.height/2.8,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height/2.5,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/img/1.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 50,
                        child: Container(
                          color: AppTheme.maincolor_50.withOpacity(0.7),
                          child: Text(
                            ' 등록일: 2019년 11월 1일 ',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).textScaleFactor*12,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        bottom: 25,
                        child: AppTheme.banner,
                      )
                    ],
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                ScreenUtil.getInstance().setHeight(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
                child: Container(
                  color: AppTheme.maincolor_50,
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '[동탄] 르보아시티',
                                textAlign: TextAlign.left,
                                style: AppTheme.title,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {}, child: Icon(Icons.share)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.favorite_border)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.remove_red_eye)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8.0, bottom: 8.0, right: 8.0),
                                child: Text(
                                  '12221',
                                  style: AppTheme.caption,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://image.fmkorea.com/files/attach/new/20170517/486616/425627500/655174689/7c20df04e8e9f1d3663dbaf11a16507a.jpg"),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '이민영',
                              style: AppTheme.body2,
                            ),
                            Text(
                              '(주)디앤씨 실장',
                              style: AppTheme.caption,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.file_download),
                              onPressed: () {},
                            ),
                            Text(
                              'PDF 다운로드',
                              style: AppTheme.caption,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: AppTheme.allRadius,
                    child: Card(
                      elevation: 0.0,
                      color: AppTheme.maincolor_50,
                      child: TabBar(
                        indicatorColor: AppTheme.maincolor_800,
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              '개요',
                              style: AppTheme.body2,
                            ),
                          ),
                          Tab(
                            child: Text(
                              '단지',
                              style: AppTheme.body2,
                            ),
                          ),
                          Tab(
                            child: Text(
                              '세부',
                              style: AppTheme.body2,
                            ),
                          ),
                          Tab(
                            child: Text(
                              '뉴스',
                              style: AppTheme.body2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        ProductDetailOne(),
                        ProductDetailTwo(),
                        ProductDetailThree(),
                        ProductDetailOne(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
