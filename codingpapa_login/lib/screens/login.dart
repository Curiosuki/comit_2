import 'package:codingpapa_login/helper/login_background.dart';
import 'package:codingpapa_login/join_or_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Authpage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // 글로벌 폼 키를 생성
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController =
      TextEditingController(); // controller를 생성

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // size라는 객체 생성
    // 앱이 사용할 화면 사이즈 가져오기,context는 앱이 구동되고 있는 상황문맥을 담고 있으니 가져와서 미디어쿼리에서 사이즈를 가져옴

    return Scaffold(
      // snackbar 보여주려면 scaffold를 써야 함
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CustomPaint(
            size: size,
            painter: LoginBackground(
                isJoin: Provider.of<JoinOrLogin>(context).isJoin),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _logoImage,
              Stack(
                children: <Widget>[
                  // input form 생성
                  _inputForm(size),
                  _authButton(size),
//                Container(width:
//                , height: 50, color: Colors.black,),
                ],
              ),
              Container(
                height: size.height * 0.1,
              ),
              Consumer<JoinOrLogin>(
                builder: (context, joinOrLogin, child) => GestureDetector(
                  onTap: () {
                    // 이름없는 함수를 줌
                    joinOrLogin.toggle();
                  },
                  child: Text(
                    joinOrLogin.isJoin
                        ? "계정이 있으시면, Sign In 해주세요"
                        : "계정이 없으신가요? 새 계정을 만들어보세요",
                    style: TextStyle(
                        color: joinOrLogin.isJoin
                            ? Colors.redAccent
                            : Colors.blueAccent),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.05,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 계정 생성 한것
  void _register(BuildContext context) async {
    final AuthResult result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text);
    final FirebaseUser user = result.user;

    if (user == null) {
      final snacBar = SnackBar(
        content: Text('please try again'),
      );
      Scaffold.of(context).showSnackBar(snacBar);
    }
  }

  // 계정 생성 한것
  void _login(BuildContext context) async {
    final AuthResult result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text);
    final FirebaseUser user = result.user;
    if (user == null) {
      final snacBar = SnackBar(
        content: Text('please try again'),
      );
      Scaffold.of(context).showSnackBar(snacBar);
    }
  }

  // 파라미터가 없을때 위쪽에 ()를 없애고 밑에 get을 넣어주면 됨
  Widget get _logoImage => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
          child: FittedBox(
            fit: BoxFit.contain,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/logo.jpg'),
            ),
          ),
        ),
      );

  Widget _authButton(Size size) => Positioned(
        left: size.width * 0.15,
        right: size.width * 0.15,
        bottom: 0,
        child: SizedBox(
          height: 50,
          child: Consumer<JoinOrLogin>(
            builder: (context, joinOrLogin, child) => RaisedButton(
                child: Text(
                  '로그인',
                  style: TextStyle(fontSize: 20),
                ),
                color:
                    joinOrLogin.isJoin ? Colors.greenAccent : Colors.blueAccent,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    joinOrLogin.isJoin ? _register(context) : _login(context);
                  }
                }),
          ),
        ),
      );

  Widget _inputForm(Size size) => Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12.0, top: 12, bottom: 32),
            child: Form(
              key: _formKey, // = unique id
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      labelText: "이메일",
                    ),
                    validator: (String value) {
                      // value가 잘 작성되었는지 확인
                      if (value.isEmpty) {
                        return "정확한 이메일을 적어주세요";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key),
                      labelText: "비밀번호",
                    ),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "정확한 패스워드를 입력해주세요";
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 8,
                  ),
                  Consumer<JoinOrLogin>(
                    builder: (context, value, child) => Opacity(
                        opacity: value.isJoin ? 0 : 1,
                        child: Text("비밀번호를 잃어버리셨나요?")),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
