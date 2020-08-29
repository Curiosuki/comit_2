import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class HomeMiddleSlider extends StatefulWidget {
  @override
  _HomeMiddleSliderState createState() => _HomeMiddleSliderState();
}

class _HomeMiddleSliderState extends State<HomeMiddleSlider> {
  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      height: 250,
      color: AppTheme.maincolor_900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                '매일 전문MD의 추천상품을 받아보세요',
                style: TextStyle(color: AppTheme.maincolor_50, fontWeight: FontWeight.bold, letterSpacing: 2.0),
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Stack(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: ScreenUtil().setWidth(60),
                            height: ScreenUtil().setHeight(60),
                            child: Image.asset(
                              'assets/img/1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                color: AppTheme.maincolor_50,
                                iconSize: 22,
                                icon: Icon(Icons.favorite_border),
                                onPressed: () {},
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 8.0),
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Text(
                                  '오피스텔',
                                  style: TextStyle(
                                      color: AppTheme.maincolor_50,
                                      fontSize: AppTheme.caption_size,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: double.infinity,
                            height: 28,
                            child: Container(
                              color: AppTheme.maincolor_800.withOpacity(0.6),
                              child: Center(
                                child: Text(
                                  '[동탄] 우성건영 르보아시티',
                                  style: TextStyle(
                                    color: AppTheme.maincolor_50,
                                    fontSize: AppTheme.texSection_size,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 18,
                          left: 8,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                                'https://image.fmkorea.com/files/attach/new/20170517/486616/425627500/655174689/7c20df04e8e9f1d3663dbaf11a16507a.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 320,
                      height: 200,
                      child: Stack(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 320,
                              height: 200,
                              child: Image.asset(
                                'assets/img/1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  color: AppTheme.maincolor_50,
                                  iconSize: 22,
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.0),
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Text(
                                    '오피스텔',
                                    style: TextStyle(
                                        color: AppTheme.maincolor_50,
                                        fontSize: AppTheme.caption_size,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 28,
                              child: Container(
                                color: AppTheme.maincolor_800.withOpacity(0.6),
                                child: Center(
                                  child: Text(
                                    '[동탄] 우성건영 르보아시티',
                                    style: TextStyle(
                                      color: AppTheme.maincolor_50,
                                      fontSize: AppTheme.texSection_size,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            left: 8,
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://image.fmkorea.com/files/attach/new/20170517/486616/425627500/655174689/7c20df04e8e9f1d3663dbaf11a16507a.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 320,
                      height: 200,
                      child: Stack(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 320,
                              height: 200,
                              child: Image.asset(
                                'assets/img/1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  color: AppTheme.maincolor_50,
                                  iconSize: 22,
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.0),
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Text(
                                    '오피스텔',
                                    style: TextStyle(
                                        color: AppTheme.maincolor_50,
                                        fontSize: AppTheme.caption_size,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 28,
                              child: Container(
                                color: AppTheme.maincolor_800.withOpacity(0.6),
                                child: Center(
                                  child: Text(
                                    '[동탄] 우성건영 르보아시티',
                                    style: TextStyle(
                                      color: AppTheme.maincolor_50,
                                      fontSize: AppTheme.texSection_size,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            left: 8,
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://image.fmkorea.com/files/attach/new/20170517/486616/425627500/655174689/7c20df04e8e9f1d3663dbaf11a16507a.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 320,
                      height: 200,
                      child: Stack(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 320,
                              height: 200,
                              child: Image.asset(
                                'assets/img/1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  color: AppTheme.maincolor_50,
                                  iconSize: 22,
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.0),
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Text(
                                    '오피스텔',
                                    style: TextStyle(
                                        color: AppTheme.maincolor_50,
                                        fontSize: AppTheme.caption_size,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 28,
                              child: Container(
                                color: AppTheme.maincolor_800.withOpacity(0.6),
                                child: Center(
                                  child: Text(
                                    '[동탄] 우성건영 르보아시티',
                                    style: TextStyle(
                                      color: AppTheme.maincolor_50,
                                      fontSize: AppTheme.texSection_size,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            left: 8,
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://image.fmkorea.com/files/attach/new/20170517/486616/425627500/655174689/7c20df04e8e9f1d3663dbaf11a16507a.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 320,
                      height: 200,
                      child: Stack(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 320,
                              height: 200,
                              child: Image.asset(
                                'assets/img/1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  color: AppTheme.maincolor_50,
                                  iconSize: 22,
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.0),
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Text(
                                    '오피스텔',
                                    style: TextStyle(
                                        color: AppTheme.maincolor_50,
                                        fontSize: AppTheme.caption_size,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: double.infinity,
                              height: 28,
                              child: Container(
                                color: AppTheme.maincolor_800.withOpacity(0.6),
                                child: Center(
                                  child: Text(
                                    '[동탄] 우성건영 르보아시티',
                                    style: TextStyle(
                                      color: AppTheme.maincolor_50,
                                      fontSize: AppTheme.texSection_size,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            left: 8,
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://image.fmkorea.com/files/attach/new/20170517/486616/425627500/655174689/7c20df04e8e9f1d3663dbaf11a16507a.jpg'),
                            ),
                          ),
                        ],
                      ),
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
