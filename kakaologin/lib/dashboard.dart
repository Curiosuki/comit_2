import 'package:flutter/material.dart';
import 'package:kakaologin/product_detail.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // 상단메뉴
  final topMenuStrings = ['아파트', '상가', '오피스텔', '지식산업센터', '전원주택', '호텔', '기타'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _buildTopMenuItems(),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 5.0),
              child: Text(
                '특별 분양관',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  color: Colors.blue,
                  child: Hero(  // Hero부분에서 태그는 넘어가는 페이지의 Hero부분과 일치해야 함
                    tag: 'specialproduct',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail()),
                        );
                      },
                      child: Image.network(
                        'http://www.woosunggroup.co.kr/admin/data/product2/1812110001_M1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blueAccent.withOpacity(0.6),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        '[동탄] 우성건영 르보아시티',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '오피스텔',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 25,
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20.0, left: 10.0, bottom: 5.0),
              child: Text(
                'MD 추천',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.redAccent,
                        width: 300,
                        child: Image.network(
                          'http://www.woosunggroup.co.kr/admin/data/product2/1812110001_M1.jpg',
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20.0, left: 10.0, bottom: 5.0),
              child: Text(
                '신규 분양홍보관',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  child: Card(
                    color: Colors.redAccent,
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'http://www.woosunggroup.co.kr/admin/data/product2/1812110001_M1.jpg',
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  child: Card(
                    color: Colors.redAccent,
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'http://www.woosunggroup.co.kr/admin/data/product2/1812110001_M1.jpg',
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildTopMenuItems() {
    return topMenuStrings.map((text) {
      return Container(
        color: Colors.blueAccent.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: RaisedButton(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            color: Colors.white,
            shape: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueAccent,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            onPressed: () {},
          ),
        ),
      );
    }).toList();
  }
}
