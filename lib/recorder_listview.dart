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

  List _list = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listview recorded'),
        ),
        body: ReorderableListView(
            children: _list
                .map((m) => ListTile(
                      key: ObjectKey(m),
                      title: Text(m),
                    ))
                .toList(),
            onReorder: _onRecorder));
  }

  _onRecorder(int oldIndex,int newIndex){
    setState(() {
      if(newIndex == _list.length){
        newIndex = _list.length-1;
      }
      var item = _list.removeAt(oldIndex);
      _list.insert(newIndex, item);
    });
  }

}
