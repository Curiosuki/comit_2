import 'package:flutter/material.dart';
import 'package:flutter_starbucks/drink_page.dart';
import 'package:flutter_starbucks/food_page.dart';
import 'package:flutter_starbucks/product_page.dart';
import 'package:flutter_starbucks/reservation_page.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('전체메뉴'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: () {},
              ),
              // always option + enter
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: '음료', icon: Icon(Icons.local_drink)),
                Tab(text: '푸드', icon: Icon(Icons.fastfood)),
                Tab(text: '상품', icon: Icon(Icons.shop)),
                Tab(text: '예약', icon: Icon(Icons.calendar_today)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              DrinkPage(),
              FoodPage(),
              ProductPage(),
              ReservationPage(),
            ],
          )),
      length: 4,
    );
  }
}
