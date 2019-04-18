import 'dart:_http';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

//void main() => runApp(HomePage());
void main() => runApp(_LogoApp());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
//    VoidCallback callback = VoidCallback();
    ColorTween(begin: Colors.red, end: Colors.white)
        .animate(_animationController);
  }

  void myListener(status) {
    _animationController.removeStatusListener(myListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(animation: null, builder: null),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}

class _LogoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _State();
  }
}

class _State extends State<_LogoApp> with SingleTickerProviderStateMixin {
  AnimationController _animController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    var _animController = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    //动画的设置和动画进度的回调
    //用anim的返回值作为动画播放的依据
//    _animation = new Tween(begin: 0.0, end: 300.0).animate(_animController)
//      ..addListener(() {
//        setState(() {});
//      });

    _animation = Tween(begin: 0.0,end: 300.0).animate(_animController)
      ..addListener((){
        setState(() {
          //
        });
      });

    _animation.addStatusListener((animationStatus){
      if(animationStatus == AnimationStatus.completed) {
        _animController.reverse(); //播放到最后，重新开始
      }else if(animationStatus == AnimationStatus.dismissed){
        _animController.forward();
      }
    });
    _animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        height: _animation.value,
        width: _animation.value,
        child: new FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }
}
