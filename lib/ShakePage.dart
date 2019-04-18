import 'package:flutter/material.dart';


class Shakepage extends StatefulWidget {
  @override
  _ShakepageState createState() => _ShakepageState();
}

class _ShakepageState extends State<Shakepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('asssets/images/ic_launcher',height: 120,width: 120),
            SizedBox(height: 10.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text('礼品')),
      ]) ,
    );
  }
}
