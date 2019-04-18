import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: ListView(
//          scrollDirection: Axis.horizontal,
//          children: <Widget>[
//            ListTile(title: Text("border"), subtitle: Text("sub title"))
//          ],
//        ),
//      ),
//    );


    //generate加载的话 会一次性加载所有的数据，但是用build的方式 不会一次性进行数据的加载
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: AppBar(title: Text('ListView例子'))),
//        body: HorListView(),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            title: Text("title")
          );
        }),
      ),
    );
//    return HorListView();
  }
}

class HorListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(100, (index) {
        return Text('$index', style: TextStyle(fontSize: 20.0), maxLines: 2);
      }),
    );
  }
}
