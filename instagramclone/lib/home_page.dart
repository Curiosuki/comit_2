import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(4.0),),
                Text(
                  '벙좀비에 오신걸 환영합니다!',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'GamjaFlower',
                      fontWeight: FontWeight.w400),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 내용을 보시려면 팔로우 하세요.', style: TextStyle(fontSize: 16.0, color: Colors.grey),),
                Padding(padding: EdgeInsets.all(8.0)),
                SizedBox(
                  width: 300.0,
                  child: Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(4.0),),
                          SizedBox(
                            width: 90.0,
                            height: 90.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "http://www.medibeaute.com.my/wp-content/uploads/2018/05/face1.jpg"),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0),),
                          Text(
                            'hijack0713@gmail.com',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('김준석'),
                          Padding(padding: EdgeInsets.all(4.0),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 85.0,
                                height: 85.0,
                                child: Image.network('https://www.glenstone.org/wp-content/uploads/prod/2018/07/AV_Landscape-Hero-Contour-2993-1276x800.jpg', fit: BoxFit.cover,),
                              ),
                              SizedBox(
                                width: 85.0,
                                height: 85.0,
                                child: Image.network('https://www.glenstone.org/wp-content/uploads/prod/2018/07/AV_Landscape-Hero-Contour-2993-1276x800.jpg', fit: BoxFit.cover,),
                              ),
                              SizedBox(
                                width: 85.0,
                                height: 85.0,
                                child: Image.network('https://www.glenstone.org/wp-content/uploads/prod/2018/07/AV_Landscape-Hero-Contour-2993-1276x800.jpg', fit: BoxFit.cover,),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0),),
                          RaisedButton(
                            child: Text('팔로우'),
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                          Padding(padding: EdgeInsets.all(4.0),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0),),
                Text('벙좀비 회원들과 친구가 되어 보세요!', style: TextStyle(fontSize: 18.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
