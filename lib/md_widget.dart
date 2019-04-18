import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //路由 就是做界面切换的
    //initialRoutex类似路由的备胎
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//这是
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialAppshili'),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/other');
        },
        tooltip: '路由jump',
        elevation: 0.0, //阴影
        shape: RoundedRectangleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon((Icons.launch)),
          title: Text("首页"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text("通讯录"),
        )
//       icon:Icon(Icons.)
      ],
          type: BottomNavigationBarType.fixed),

    );
  }
}
