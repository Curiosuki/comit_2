import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thememaker/editor_page.dart';
import 'package:thememaker/ui_setting/ui_color_theme.dart';
import 'package:thememaker/ui_setting/ui_text_theme.dart';
import 'package:youtube_player/youtube_player.dart';

class WidgetText extends StatefulWidget {
  @override
  _WidgetTextState createState() => _WidgetTextState();
}

class _WidgetTextState extends State<WidgetText> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.pen),
          onPressed: () {
            Navigator.push(
              // OnPressed 함수에 넣기
              context,
              MaterialPageRoute(builder: (context) => EditorPage()),
            );
          },
        ),
        appBar: AppBar(
          title: Text('DEEP DIVE'),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.github),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: UIColorTheme.mainColor_900,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.youtube),
                text: 'Lecture',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.newspaper),
                text: 'Contents',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Lecture(),
            Contents(),
          ],
        ),
      ),
    );
  }
}

class Lecture extends StatefulWidget {
  @override
  _LectureState createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Divider(
            color: Colors.white,
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Icon(Icons.play_circle_filled),
                ),
                Text(
                  '영상강의 | Video Lecture',
                  style: UITextTheme.body
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          YoutubePlayer(
            source: "https://youtu.be/Kl69yxukBdw",
            quality: YoutubeQuality.HD,
            aspectRatio: 16 / 9,
            showThumbnail: true,
          ),
          Divider(
            color: Colors.white,
            height: 12,
          ),

          ExpansionTile(
            initiallyExpanded: true,
            title: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.play_circle_filled),
                ),
                Text(
                  '샘플이미지 | Image Sample',
                  style: UITextTheme.body
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            children: <Widget>[
              Image.network(
                  'https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/e3624172607d5551.gif'),
            ],
          ),
          /*Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.check_circle),
                ),
                Text(
                  '강의자료 | Lecture Material',
                  style: UITextTheme.body
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),*/
         /* SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Carousel(
              autoplay: false,
              showIndicator: false,
              borderRadius: false,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: true,
              //overlayShadow: true,
              //overlayShadowColors: Colors.white,
              //overlayShadowSize: 0.7,
              images: [
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}

class Contents extends StatefulWidget {
  @override
  _ContentsState createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Divider(
            color: Colors.white,
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '| 한줄요약 |',
                  style: UITextTheme.body
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: UIColorTheme.mainColor_100,
            child: Center(
                child: Text(
              'Text는 글자를 보여줍니다.',
              style: UITextTheme.subtitle,
            )),
          ),
          Divider(
            color: Colors.white,
            height: 12,
          ),
          ExpansionTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text('기본사용법',
                style: UITextTheme.body
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: UIColorTheme.mainColor_100,
                child: Center(
                    child: Text(
                  'Text는 글자를 보여줍니다.',
                )),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text('속성정의',
                style: UITextTheme.body
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: UIColorTheme.mainColor_100,
                child: Center(
                    child: Text(
                  'Text는 글자를 보여줍니다.',
                )),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text('내용설명',
                style: UITextTheme.body
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: UIColorTheme.mainColor_100,
                child: Center(
                    child: Text(
                  'Text는 글자를 보여줍니다.',
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
