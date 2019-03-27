import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text实例'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //clip 超出部分截断
              //softWrap 自动换行
              Text(
                '受人尊敬的企业',
                maxLines: 2,
                overflow: TextOverflow.fade,
                softWrap: true,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.wavy),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: '一家受人尊敬的企业',
                    style: TextStyle(color: Color(0xffff0000), fontSize: 20.0),
                    children: <TextSpan>[
                      TextSpan(
                          text: '我们的宗旨',
                          //..是集联的 类似build模式，给属性赋值完毕 返回的还是其benhseng
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              String url =
                                  "https://flutterchina.club/widgets-intro/";
                              if (await canLaunch(url)) {
                                await launch(url);
                              }
                            })
                    ]),
              ),
              IconButton(icon: Icon(Icons.error), onPressed: () {}),
              Container(
                height: 10.0,
                color: Colors.blue,
              ),
              RaisedButton(
                //这是一个函数
                onPressed: () {},
                child: Text('Raisedbutton'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
