import 'package:flutter/cupertino.dart';

void main() => runApp(MyLogo());

class MyLogo extends AnimatedWidget {
//  MyLogo({Key key,@required Animation animation}):super(Key(value): Key,listenable:animation)

  final Tween<double> _rotataAnim = Tween<double>(begin: 0.0, end: 20.0);
  final Tween<double> _scaleAnim = Tween<double>(begin: 1.0, end: 10.0);

  @override
  Widget build(BuildContext context) {

    return null;
  }
}
