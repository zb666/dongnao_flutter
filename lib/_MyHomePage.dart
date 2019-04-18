import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//创建state 控件
class _MyHomePageState extends State<MyHomePage> {
  List<String> list = List(); //列表展示的数据项

  ScrollController _scrollController = ScrollController(); //listview的控制器

  int _page = 1;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        _getMore();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title", textAlign: TextAlign.right)),
      body: RefreshIndicator(
          child: ListView.builder(
            itemBuilder: _renderRow,
            itemCount: list.length + 1,
            controller: _scrollController,
          ),
          onRefresh: _onRefresh),
    );
  }

  Future _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        list = List.generate(20, (i) => "这是刷新的部分$i");
      });
    });
  }

  Future getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(20, (i) => 'Item index is $i', growable: true);
      });
    });
  }

  //上拉加载
  void _getMore() async {
    if (!isLoading) {
      setState(() {
        this.isLoading = true;
      });
      await Future.delayed(Duration(seconds: 1), () {
        setState(() {
          list.addAll(List.generate(20, (i) => "这是$i拉取上来的数据"));
          this._page++;
          this.isLoading = false;
        });
      });
    }
  }

  Widget _renderRow(BuildContext buildContext, int index) {
//    if (index < list.length) {
//      return ListTile(title: Text("$list[index])"));
//    }
    return _getMoreWidget();
  }
}

Widget _getMoreWidget() {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('正在加载中', style: TextStyle(fontSize: 16.0)),
          CircularProgressIndicator(strokeWidth: 1.0)
        ],
      ),
    ),
  );
}
