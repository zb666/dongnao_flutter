import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
//  runApp(SelfButton());
}

class SelfButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(child: null, onRefresh: null);
  }
}

class CustomButton extends StatelessWidget {

  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed:(){},child:Text(label));
  }
}
