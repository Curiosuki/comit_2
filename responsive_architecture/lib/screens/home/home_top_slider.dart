import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:responsive_architecture/model/productInfo.dart';
import 'package:responsive_architecture/repository/product_repository.dart';
import 'package:responsive_architecture/screens/product/product_detail.dart';
import 'package:responsive_architecture/ui_setting/ui_app_theme.dart';

class HomeTopSlider extends StatefulWidget {
  @override
  _HomeTopSliderState createState() => _HomeTopSliderState();
}

class _HomeTopSliderState extends State<HomeTopSlider> {

  @override
  Widget build(BuildContext context) {
    final productList = ProductRepository().productList;

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Carousel(
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: AppTheme.maincolor_50,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        borderRadius: false,
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white,
        overlayShadowSize: 0.7,
        images: productList.map((product) {
          return buildProduct(context, product);
        }).toList(),
      ),
    );
  }

  Widget buildProduct(BuildContext context, ProductInfo product) {
    return Stack(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    // OnPressed 함수에 넣기
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetail()),
                  );
                },
                child: Image.asset(
                  product.backgroundImgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // height: 30,
                margin: EdgeInsets.only(left: 20, bottom: 20.0),
                color: AppTheme.maincolor_800.withOpacity(0.5),
                width: double.infinity,
                child: Text(
                  product.title,
                  // textAlign: TextAlign.center,
                  style: AppTheme.body2_white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 8.0),
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          color: AppTheme.maincolor_50,
                          iconSize: 22,
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        );
  }
}
