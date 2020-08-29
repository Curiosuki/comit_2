import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bungzombi/login_page.dart';
import 'package:bungzombi/tab_page.dart';


class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if (snapshot.hasData){
          return TabPage(snapshot.data);
        }else {
          return LoginPage();

        }
      },
    );
  }
}