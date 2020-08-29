import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:solution/store_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            /*foregroundDecoration:
                BoxDecoration(color: Colors.blueAccent.withOpacity(0.6),),*/
            child: Carousel(
              images: [
                new NetworkImage(
                    'http://cfile239.uf.daum.net/image/202CB41C4B266EFE171C2B'),
                new NetworkImage(
                    'https://t1.daumcdn.net/cfile/tistory/143D1B3B5008665C21'),
                new NetworkImage(
                    'https://t1.daumcdn.net/cfile/tistory/152F203A500865B927'),
              ],
            ),
          ),

          Positioned(
            top: -200,
            right: 10,
            left: 10,
            child: Center(
              child: Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.5),
                  shape: BoxShape.circle,
                  // boxShadow: const [BoxShadow(blurRadius: 9)]
                ),
              ),
            ),
          ),

          Positioned(
            top: 50,
            right: 80,
            left: 80,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "'올분양'"),
                    TextSpan(text: '과 함께라면\n'),
                    TextSpan(text: '거품없는 \n실제 분양가를\n보실 수 있습니다!\n'),
                  ]),
            ),
          ),

          Positioned(
            right: 80,
            left: 80,
            bottom: 60,
            child: RaisedButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text('바로가기', style: TextStyle(fontSize: 18.0),),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StorePage()),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}






