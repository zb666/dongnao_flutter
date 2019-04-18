import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<LoginPage> {
  String _userName;
  String _psd;

  GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              //form 表单 TextFormField 密码账号输入框
              child: Form(
                  key: _loginKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'HintText',
                          labelText: '请输入用户名',
                        ),
                        onSaved: (value) {
                          print("$value");
                          _userName = value;
                        },
                        onFieldSubmitted: (value) {
                          print("onFieldSubmitted$value");
                        },
                        validator: (value) {
                          return value.length < 4 ? "chan过渡不够" : null;
                        },
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

//退出界面 清空token 然后用eventbus通知到界面
class _SettingPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置',style: TextStyle(color: Color(0xff0000))),
        iconTheme: IconThemeData(color: Color(0xffffff)),
        primary: true,
      ),
      body: Center(),
    );
  }
}
