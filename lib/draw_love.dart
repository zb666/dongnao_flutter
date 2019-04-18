//import 'dart:math';
//
//import 'package:flutter/material.dart';
//
//void main() =>
//    runApp(MaterialApp(
//      home: HomePage(),
//    ));
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  AnimationController _animationController;
//
//  Animation<double> _animation;
//  bool reversed;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _animationController =
//        AnimationController(vsync: this, duration: Duration(seconds: 1));
//    _animation =
//  }
//
//  _doAnim() {
//    reversed ? _animationController.reverse() : _animationController.forward();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      color: Color(0xffff0000),
//      child: Container(
//        height: 200.0,
//        width: 200.0,
//        child: Text(
//          '点我',
//          style: TextStyle(),
//        ),
//      ),
//    );
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//    _animationController.dispose();
//  }
//}
//
//
//class HomePageState extends StatefulWidget {
//  @override
//  _HomePageStateState createState() => _HomePageStateState();
//}
//
//class _HomePageStateState extends State<HomePageState> {
//
//  var images = [
//    '/images',
//    '/images',
//    '/images',
//    '/images',
//    '/images',
//    '/images',
//  ];
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: Center(
//          child: ListWheelScrollView(
//            perspective: 0.001,
//            diameterRatio: 1.0,
//            itemExtent: MediaQuery
//                .of(context)
//                .size
//                .height,
////              children: List.generate(20, (index) => index)
////                  .map((m) => Text(m.toString()))
////                  .toList()
//            children: <Widget>[
//              Image.asset("", fit: BoxFit.cover),
//              Positioned(
//                  bottom: 30.0,
//                  left: 30.0,
//                  child: Text('天知道')
//              )
//            ],
//          ),
//        )
//    );
//  }
//}
//
//class HomeInnerPage extends StatefulWidget {
//
//
//  @override
//  _HomeInnerPageState createState() => _HomeInnerPageState();
//}
//
////刷新
//class _HomeInnerPageState extends State<HomeInnerPage> {
//
//  List list = List();
//
//  ScrollController _scrollController;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    list = List.generate(18, (i) => 'Item $i');
//    _refersh();
//    _scrollController = ScrollController()
//      ..addListener(() {
//        //滑动监听
//        if (_scrollController.position.pixels ==
//            _scrollController.position.maxScrollExtent) {
//          //滑动到了底部
//          _loadMoreData();
//        }
//      });
//  }
//
//
//  Future _loadMoreData() async {
//    //这是耗时操作
//    await Future.delayed(Duration(seconds: 3), () {
//       setState(() {
////         list.addAll(List.generate()); 这里进行数据的添加
//       });
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: Center(
//          child: RefreshIndicator(
//            displacement: 10.0,
//            child: list == null ? //根据是否有数据 显示对应的控件
//            Center(
//
//            ) : ListView.builder(
//              itemCount: list?.length,
//              itemBuilder: (context, index) {
////                if(index == list.length){ 加载到最后的条目 就显示加载更多
////                  return Padding
////                }
//                return ListTile(
//                  title: Text(list[index]),
//                );
//              },
//            ),
//            onRefresh: _refersh,
//          ),
//        ));
//  }
//
//  _refersh() async {
//    await Future.delayed(Duration(seconds: 1), () {
//      //获取数据
//      list = List.generate(Random().nextInt(20) + 1, (i) => 'Item $i');
//    });
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//    _scrollController.dispose();
//  }
//
//}
//
//
//
//
//
//
