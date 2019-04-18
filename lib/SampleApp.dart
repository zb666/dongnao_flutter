import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  //[]集合声明 {}数组声明
  List widgetList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: ListView.builder(
          itemCount: widgetList.length,
          //遍历生成各个Widget item
          itemBuilder: (BuildContext buildContext, int index) => getRow(index)),
    );
  }

  void loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    setState(() {
      widgetList = JsonCodec().decode(response.body);
      // ignore: missing_catch_or_finally
    });
  }

  Widget getRow(int index) =>
      Row(children: <Widget>[
        Text("raw data $index"),
        Text("raw data $index")
      ],mainAxisAlignment: MainAxisAlignment.spaceAround);
}
