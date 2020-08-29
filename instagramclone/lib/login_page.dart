import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'tab_page.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250.0,
              height: 250.0,
              child: Image.network(
                    "https://pbs.twimg.com/media/CXugW5iUEAA8V5J.jpg"),
              ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Text(
              '벙좀비',
              style: TextStyle(color: Colors.redAccent, fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '"같이 놀꺼면 드루와~"',
              style: TextStyle(color: Colors.black45, fontSize: 20.0,),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {
                _handleSignIn().then((user) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabPage(user)));
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<FirebaseUser> _handleSignIn() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    FirebaseUser user = (await _auth.signInWithCredential(
        GoogleAuthProvider.getCredential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken))).user;
    print("signed in " + user.displayName);
    return user;
  }
}


class SliverDoc extends RenderSliver {
  @override
  void performLayout() {
    // TODO: implement performLayout
  }

}