import 'package:flutter/material.dart';
import 'package:flutter_theme/theme/text_theme.dart';
import 'answer.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(display4: TextStyle()),
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  const questions = [
    {
      'questionText': 'what is your favorite animal?',
      'answers': ['dog', 'cat', 'snake', 'lion'],
    },
    {
      'questionText': 'what is your favorite color?',
      'answers': ['black', 'red', 'green', 'yellow'],
    },
    {
      'questionText': 'what is your favorite tv show?',
      'answers': ['전참시', '무한도전', '개콘', '코빅'],
    },

  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    print(_questionIndex);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '녹두전',
              style: SetTextTheme.display4,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.display3,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.display2,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.display1,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.headline,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.subhead,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.title,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.subtitle,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.bodySection,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.textSection,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.caption,
            ),
            Text(
              '녹두전',
              style: SetTextTheme.buttonText,
            ),
            SizedBox(
              height: 30,
            ),
            Question(
              questionText: questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['questionText'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
