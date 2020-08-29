import 'package:flutter/material.dart';
import 'package:bungzombi/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          '벙좀비',
          style: TextStyle(color: Colors.white, fontFamily: 'GamjaFlower'),
        ),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreatePage()),
            );
        },
        child: Icon(Icons.create),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0),
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildListItem(context, index);
          }),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network(
      'http://www.medibeaute.com.my/wp-content/uploads/2018/05/face1.jpg',
      fit: BoxFit.cover,
    );
  }
}
