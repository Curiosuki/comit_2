import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themeapp/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basicTheme(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _textController = new TextEditingController();

  // TabController to control and switch tabs
  TabController _tabController;

  // Current Index of tab
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, length: 2, initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '안녕하세요',
            style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration.collapsed(hintText: 'ID'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration.collapsed(hintText: 'ID'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration.collapsed(hintText: 'ID'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration.collapsed(hintText: 'ID'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: new Border.all(color: Colors.transparent),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    shape: Border.all(
                      width: 1,
                      color: _currentIndex == 0 ? Colors.blue : Colors.blue,
                    ),
                    color: _currentIndex == 0 ? Colors.blue : Colors.white,
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: Text(
                      '남자',
                      style: TextStyle(
                        color:
                            _currentIndex == 0 ? Colors.white : Colors.blue,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    shape: Border.all(
                      width: 1,
                      color: _currentIndex == 0 ? Colors.blue : Colors.blue,
                    ),
                    color: _currentIndex == 1 ? Colors.blue : Colors.white,
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    child: Text(
                      '여자',
                      style: TextStyle(
                        color:
                            _currentIndex == 0 ? Colors.blue : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
