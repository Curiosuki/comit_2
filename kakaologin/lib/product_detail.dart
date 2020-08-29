import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    // 데이터 테이블 배열
    var productColumns1 = [
      new DataColumn(
        label: new Text('항목'),
      ),
      new DataColumn(
        label: new Text('내용'),
      ),
    ];

    var myRows1 = [
      new DataRow(cells: [
        new DataCell(new Text('건물명')),
        new DataCell(new Text('동탄 르보아시티')),
      ]),
      new DataRow(cells: [
        new DataCell(new Text('시행사')),
        new DataCell(new Text('(주) 오앤유')),
      ]),
      new DataRow(cells: [
        new DataCell(new Text('시공사')),
        new DataCell(new Text('우성건설')),
      ]),
      new DataRow(cells: [
        new DataCell(new Text('신탁')),
        new DataCell(new Text('하나신탁')),
      ]),
      new DataRow(cells: [
        new DataCell(new Text('분양사')),
        new DataCell(new Text('(주) 이든디엔씨')),
      ]),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Sliver앱'),
            backgroundColor: Colors.blueAccent,
            floating: true,
            elevation: 0.0,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(  // 이전페이지에서 오는 Hero tag와 일치해야함
                tag: 'specialproduct',
                child: Image.network(
                  'http://www.woosunggroup.co.kr/admin/data/product2/1812110001_M1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillViewport(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                child: DefaultTabController(
                  length: 3,  //  탭바 몇개인지를 정하는 부분
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              '분양정보',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '단지정보',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '상세정보',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              child: DataTable(
                                columns: productColumns1,
                                rows: myRows1,
                              ),
                            ),
                            Container(color: Colors.redAccent,child: Text('Test')),
                            Container(color: Colors.blueAccent, child: Text('Test')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: 1),// 페이지상에서 몇번 반복하느냐를 넣어주는 부분
          ),
        ],
      ),
    );
  }
}
