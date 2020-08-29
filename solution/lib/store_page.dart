import 'package:flutter/material.dart';


class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final topMenuStrings = ['아파트', '오피스텔', '상가', '지식산업센터', '빌라', '호텔', '전원주택', '기타'];  // 배열을 만듦


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("분양앱"),),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: '검색'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _buildItems(),
            ),
          ),


        ],
      ),
    );
  }

  _buildItems() {
    return topMenuStrings.map((text) {
      // map (함수정의) = 리스트에 있는 항목을 변화 시키자!
      return Padding(
        padding: EdgeInsets.all(4.0),
        child: RaisedButton(
          child: Text(text),
          color: Colors.white,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          onPressed: () {},
        ),
      );
    }).toList();

  }
}
