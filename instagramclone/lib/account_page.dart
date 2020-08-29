import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: Text(
        '벙좀비',
        style: TextStyle(color: Colors.white, fontFamily: 'GamjaFlower'),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app, color: Colors.white,),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://www.medibeaute.com.my/wp-content/uploads/2018/05/face1.jpg'),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: FloatingActionButton(
                        onPressed: null,
                        backgroundColor: Colors.redAccent,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Text(
                '김준석',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Text(
            '123\n게시물',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0,),
          ),
          Text(
            '123\n팔로워',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0,),
          ),
          Text(
            '123\n팔로윙',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0,),
          ),
        ],
      ),
    );
  }
}
