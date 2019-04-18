import 'package:flutter/cupertino.dart' show AppColors;
import 'package:flutter/material.dart';

void main() => runApp(UserInfo());

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  List<String> _tabTitles = ['@我', '评论', '私信']; //{'1','2'} //;
  int curPage = 1;
  List<String> messageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('用户详情', style: TextStyle(color: Colors.white))),
      body: TabBarView(children: [Center(child: Text('child'))]), //这是导航栏
//      Column(
//        children: <Widget>[
//          InkWell(
//            //头像 墨水
//            onTap: () {
//              new Future(null).then((detial) {
//                if (detial != null) {
//                  switch (1) {
//                    case 1:
//                      break;
//                  }
//                }
//              });
//            },
//            child: Container(
//              child: Text('data'),
//            ),
//          ),
//        ],
//      ),
    );
  }

  _buildMessageList() {
    //获取私信
    getMessageList();
    if (messageList == null) {
      return Center(
//        child: CupertinoActivityIndicator(),
      );
    }
  }


}

void getMessageList() {
//  Datautils.isLogin().runtimeType;
    //map 拼接请求的参数

}

Future<Null> _pullToRefresh() async{

}

navigator(){



}

